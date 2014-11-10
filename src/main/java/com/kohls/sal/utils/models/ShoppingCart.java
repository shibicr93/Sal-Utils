package com.kohls.sal.utils.models;

import java.io.Serializable;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/**
 * Created by Shibi on 10-11-2014.
 */
public class ShoppingCart {
    private static final long serialVersionUID = 3985906211561047414L;

    private static final Comparator CART_ITEM_COMPARATOR = new CartItemComparator();
    private static final TotalQuantity TOTAL_QUANTITY = new TotalQuantity();
    private static final Predicate<PromoCode> IS_KIOSK_PROMO_CODE = new IsKioskPromoCode();
    private static final PromoCodeApplied PROMO_CODE_APPLIED = new PromoCodeApplied();
    private static final Predicate<PromoCode> IS_APPLIED_KIOSK_PROMO = and(IS_KIOSK_PROMO_CODE, PROMO_CODE_APPLIED);
    private static final Predicate NON_KIOSK_PROMO_CODE = not(IS_KIOSK_PROMO_CODE);
    private static final Predicate NON_SPECIAL_GIFT_WRAP_SKU = not(new GiftWrapCartItemPredicate());
    private static final Predicate GIFT_WRAP_ITEM_PREDICATE = new GiftWrapItemPredicate();
    private static final Predicate GIFT_ITEM_PREDICATE = new GiftItemPredicate();

    private List<CartItem> items;
    private List<PromoCode> promoCodes;
    private KohlsCashSummary kohlsCashSummary;
    private double subTotal;
    private double total;
    private double estimatedShipping;
    private double tax;
    private double shippingSurcharges;
    private double giftWrapCharges;
    private String promoMessage;
    private Long cartId;
    private String statusCode;
    private Integer type;
    private String typeCode;
    private Long createdFor;
    private Double estimateSavings;

    public static class Builder implements Serializable {
        private static final long serialVersionUID = -1117361204000296569L;  //NOPMD
        private static final double ZERO = 0;

        private double subTotal = ZERO;
        private double total = ZERO;
        private double estimatedShipping = ZERO;
        private double tax = ZERO;
        private double shippingSurcharges = ZERO;
        private double giftWrapCharges = ZERO;

        private KohlsCashSummary kohlsCashSummary;
        private List<PromoCode> promoCodes = Lists.newArrayList();
        private String promoMessage;
        private List<CartItem> items = Lists.newArrayList();
        private Long cartId;
        private String statusCode;
        private Integer type;
        private String typeCode;
        private Long createdFor;
        private Double estimateSavings;

        public Builder items(final List<CartItem> items) {
            this.items = items;
            return this;
        }

        public Builder subTotal(final double subTotal) {
            this.subTotal = subTotal;
            return this;
        }

        public Builder total(final double total) {
            this.total = total;
            return this;
        }

        public Builder estimatedShipping(final double estimatedShipping) {
            this.estimatedShipping = estimatedShipping;
            return this;
        }

        public Builder tax(final double tax) {
            this.tax = tax;
            return this;
        }

        public Builder shippingSurcharges(final double shippingSurcharges) {
            this.shippingSurcharges = shippingSurcharges;
            return this;
        }

        public Builder giftWrapCharges(final double giftWrapCharges) {
            this.giftWrapCharges = giftWrapCharges;
            return this;
        }

        public Builder kohlsCashSummary(final KohlsCashSummary kohlsCashSummary) {
            this.kohlsCashSummary = kohlsCashSummary;
            return this;
        }

        public Builder promoCodes(final List promoCodes) {
            this.promoCodes = promoCodes;
            return this;
        }

        public Builder promoMessage(final String promoMessage) {
            this.promoMessage = promoMessage;
            return this;
        }

        public Builder cartId(final Long cartId) {
            this.cartId = cartId;
            return this;
        }

        public Builder statusCode(final String statusCode) {
            this.statusCode = statusCode;
            return this;
        }

        public Builder type(final Integer type) {
            this.type = type;
            return this;
        }

        public Builder typeCode(final String typeCode) {
            this.typeCode = typeCode;
            return this;
        }

        public Builder estimateSavings(final Double estimateSavings) {
            this.estimateSavings = estimateSavings;
            return this;
        }

        public Builder createdFor(final Long createdFor) {
            this.createdFor = createdFor;
            return this;
        }

        public ShoppingCart build() {
            return new ShoppingCart(this);
        }
    }

    private ShoppingCart(final Builder builder) {
        this.items = builder.items;
        this.subTotal = builder.subTotal;
        this.total = builder.total;
        this.estimatedShipping = builder.estimatedShipping;
        this.tax = builder.tax;
        this.shippingSurcharges = builder.shippingSurcharges;
        this.giftWrapCharges = builder.giftWrapCharges;
        this.kohlsCashSummary = builder.kohlsCashSummary;
        this.promoCodes = builder.promoCodes;
        this.promoMessage = builder.promoMessage;
        this.cartId = builder.cartId;
        this.statusCode = builder.statusCode;
        this.type = builder.type;
        this.typeCode = builder.typeCode;
        this.createdFor = builder.createdFor;
        this.estimateSavings = builder.estimateSavings;
    }

    /**
     * Checks if cart is mixed with registry and non-registry items.
     *
     * @return true if registry and non-registry items
     */
    public boolean isMixed() {
        if (!isEmpty()) {
            boolean foundReg = false, foundNonReg = false;
            for (CartItem cartItem : items) {
                if (cartItem.hasRegistry()) {
                    foundReg = true;
                } else {
                    foundNonReg = true;
                }
                if (foundNonReg && foundReg) {
                    return true;
                }
            }
        }
        return false;
    }

    /**
     * Checks if cart has a registry item
     *
     * @return true if registry item present
     */
    public boolean hasRegistryCartItem() {
        for (CartItem item : items) {
            if (item.hasRegistry()) {
                return true;
            }
        }
        return false;
    }

    /**
     * Checks if cart has a non-registry item
     *
     * @return true if non-registry item present
     */
    public boolean hasNonRegistryCartItem() {
        for (CartItem item : items) {
            if (!item.hasRegistry()) {
                return true;
            }
        }
        return false;
    }

    public void addItem(final CartItem item) {
        items.add(item);
    }

    public void removeItem(final CartItem item) {
        items.remove(item);
    }

    public int getLineItemCount() {
        return items.size();
    }

    public int getTotalNumberOfItems() {
        return calculateTotalNumberOfItems(getAllNonGiftWrapItems());
    }

    public Double getEstimateSavings() {
        return estimateSavings;
    }

    /**
     * This method filter the cart item list further
     * and only included those cart items which are gift wrapped.
     * This excludes any items which is Gift Cart/Gift Wrap/non gift marked
     *
     * @return List fileterd list as above
     */
    public List<CartItem> getAllGiftWrappedOnlyItems() {
        return FluentIterable.from(getAllNonGiftWrapItems()).filter(GIFT_WRAP_ITEM_PREDICATE).toImmutableList();
    }

    public CartItem getItem(final int index) {
        return items.get(index);
    }

    public CartItem getItemWithSortIndex(final int sortIndex) {
        return FunctionalIterables.find(getItems(), new SortIndexMatcher(sortIndex));
    }

    public CartItem getItemWithCartIndex(final int cartIndex) {
        return FunctionalIterables.find(getItems(), new CartIndexMatcher(cartIndex));
    }

    /**
     * <b>DISCLAIMER: The use of this method is <strong>STRONGLY NOT RECOMMENDED</strong></b>
     * If you find yourself in need to use this method, you should reconsider what you are trying to accomplish and see
     * if there are any alternate approaches.
     * <p/>
     * This method has been created for the purpose of overcoming a unique behavior implementation in Blue Martini business action KohlsDeleteCartItem.
     * Tying your code to a positional index for a particular item in the cart is a <strong>really bad idea</strong>.
     *
     * @param cartIndex cart index of the cart item
     * @return the positional index of the cart item matching the given cart index (starting at zero)
     */
    public int getPositionIndexByCartIndex(final int cartIndex) {
        return Iterables.indexOf(getItems(), new CartIndexMatcher(cartIndex));
    }

    public List<CartItem> getAllNonGiftWrapItems() {
        return FluentIterable.from(getItems()).filter(NON_SPECIAL_GIFT_WRAP_SKU).toImmutableList();
    }

    public List<CartItem> getItems() {
        return items;
    }

    public List<CartItem> getSortedItems() {
        return Ordering.<CartItem>from(CART_ITEM_COMPARATOR).sortedCopy(getAllNonGiftWrapItems());
    }

    public List<CartItem> getAllGiftItems() {
        return FluentIterable.from(getItems()).filter(GIFT_ITEM_PREDICATE).toImmutableList();
    }

    public List<CartItem> getSortedGiftItems() {
        return Ordering.<CartItem>from(CART_ITEM_COMPARATOR).sortedCopy(getAllGiftItems());
    }

    public boolean contains(final CartItem cartItem) {
        return items.contains(cartItem);
    }

    public boolean isEmpty() {
        return items.isEmpty();
    }

    public void addPromoCode(final PromoCode promoCode) {
        if (!promoCodes.contains(promoCode)) {
            promoCodes = Lists.newArrayList(promoCodes);
            promoCodes.add(promoCode);
        }
    }

    public List<PromoCode> getPromoCodes() {
        return promoCodes;
    }

    public List<PromoCode> getNonKioskPromoCodes() {
        return FluentIterable.from(promoCodes).filter(NON_KIOSK_PROMO_CODE).toImmutableList();
    }

    public PromoCode getKioskPromoCode() {
        return FunctionalIterables.find(promoCodes, IS_APPLIED_KIOSK_PROMO);
    }

    static boolean isKioskPromoCode(final PromoCode promoCode) {
        final PromoCode.PromoCodeType type = promoCode.getType();
        return type.isFreeShipping();
    }

    public void setPromoCodes(final List<PromoCode> promoCodes) {
        this.promoCodes = promoCodes;
    }

    public KohlsCashSummary getKohlsCashSummary() {
        return kohlsCashSummary;
    }

    public double getSubTotal() {
        return subTotal;
    }

    public double getTotal() {
        return total;
    }

    public double getEstimatedShipping() {
        return estimatedShipping;
    }

    public double getTax() {
        return tax;
    }

    public double getShippingSurcharges() {
        return shippingSurcharges;
    }

    public double getGiftWrapCharges() {
        return giftWrapCharges;
    }

    public String getPromoMessage() {
        return promoMessage;
    }

    public boolean isShippingSurchargesIncluded() {
        return shippingSurcharges > 0;
    }

    static int calculateTotalNumberOfItems(final List<CartItem> items) {
        return FunctionalIterables.collect(items, TOTAL_QUANTITY);
    }

    public Long getCartId() {
        return cartId;
    }

    public String getStatusCode() {
        return statusCode;
    }

    public Integer getType() {
        return type;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public Long getCreatedFor() {
        return createdFor;
    }

    public Builder toBuilder() {
        return new Builder()
                .items(items)
                .estimatedShipping(estimatedShipping)
                .giftWrapCharges(giftWrapCharges)
                .kohlsCashSummary(kohlsCashSummary)
                .promoCodes(promoCodes)
                .promoMessage(promoMessage)
                .shippingSurcharges(shippingSurcharges)
                .subTotal(subTotal)
                .tax(tax)
                .total(total)
                .cartId(cartId)
                .statusCode(statusCode)
                .typeCode(typeCode)
                .type(type)
                .createdFor(createdFor)
                .estimateSavings(estimateSavings);
    }

    public boolean equals(final Object o) {
        return EqualsBuilder.reflectionEquals(this, o);
    }

    public int hashCode() {
        return new HashCodeBuilder(17, 37).append(items)
                .append(kohlsCashSummary).append(subTotal).append(total)
                .append(estimatedShipping).append(tax).append(shippingSurcharges)
                .append(giftWrapCharges).append(promoMessage).toHashCode();
    }

    /**
     * Returns Last Item added to the Shopping Cart
     *
     * @return Last item in the cart or null if the shopping cart is empty.
     */
    public CartItem getLastCartItem() {
        final int size = items.size();
        return getCartItem(size - 1);
    }

    private CartItem getCartItem(final int cartIndex) {
        if (cartIndex >= 0) {
            final CartItem cartItem = items.get(cartIndex);
            return NON_SPECIAL_GIFT_WRAP_SKU.apply(cartItem) ? cartItem : getCartItem(cartIndex - 1);
        }
        return null;
    }

    /**
     * Convenience method for updating cart item in the shopping cart.
     *
     * @param updatedCartItems mapping of cart index to cart item. The key for the map is used as the cart index to be
     *                         replaced in the cart. For all other items in the cart for which no cart index-to-item mapping is given,
     *                         the original cart items in the shopping cart are used.
     * @return updated shopping cart with the corresponding cart items updated
     */
    private ShoppingCart updateCartItems(final Map<Integer, CartItem> updatedCartItems) {
        final ShoppingCart cart = toBuilder().items(Lists.<CartItem>newArrayList()).build();
        return FunctionalIterables.foldLeft(items, cart, new CartItemUpdater(updatedCartItems));
    }

    public ShoppingCart updateCartItems(final CartUpdates updates) {
        validateUpdates(updates);
        return updateCartItems(updates.getUpdateMap());
    }

    public ShoppingCart updateCartItem(final CartUpdate update) {
        final CartUpdates cartUpdates = new CartUpdates();
        return updateCartItems(cartUpdates.add(update));
    }

    public ShoppingCart updateCartItem(final int cartIndex, final CartItem updatedCartItem) {
        return updateCartItem(CartUpdate.create(cartIndex, updatedCartItem));
    }

    void validateUpdates(final CartUpdates updates) {
        checkArgument(notEmpty(items), "shopping cart is empty, cannot update cart item");
        checkArgument(notEmpty(updates.getUpdateMap()), "update map is empty, cannot update cart");
    }

    static class PromoCodeApplied implements Predicate<PromoCode> {
        public boolean apply(final PromoCode promoCode) {
            return promoCode.getApplied();
        }
    }

    static class TotalQuantity implements Function<CartItem, Integer> {
        public Integer apply(final CartItem item) {
            return item.getQuantity();
        }
    }

    static class CartItemUpdater implements BinaryFunction<ShoppingCart, CartItem> {
        private final Map<Integer, CartItem> updatedCartItems;

        public CartItemUpdater(final Map<Integer, CartItem> updatedCartItems) {
            this.updatedCartItems = updatedCartItems;
        }

        public ShoppingCart apply(final ShoppingCart cart, final CartItem item) {
            final CartItem updatedItem = updatedCartItems.get(item.getCartIndex());
            cart.addItem(notNull(updatedItem) ? updatedItem : item);
            return cart;
        }
    }

    static class IsKioskPromoCode implements Predicate<PromoCode> {
        public boolean apply(final PromoCode object) {
            return isKioskPromoCode(object);
        }
    }

    static class CartIndexMatcher implements Predicate<CartItem> {
        private final int cartIndex;

        public CartIndexMatcher(final int cartIndex) {
            this.cartIndex = cartIndex;
        }

        public boolean apply(final CartItem item) {
            return notNull(item.getCartIndex()) && item.getCartIndex() == cartIndex;
        }
    }

    static class SortIndexMatcher implements Predicate<CartItem> {
        private final int sortIndex;

        public SortIndexMatcher(final int sortIndex) {
            this.sortIndex = sortIndex;
        }

        public boolean apply(final CartItem item) {
            return notNull(item.getSortIndex()) && item.getSortIndex() == sortIndex;
        }
    }
}
