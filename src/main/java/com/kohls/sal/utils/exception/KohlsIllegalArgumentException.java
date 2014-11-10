package com.kohls.sal.utils.exception;

import com.google.common.base.Optional;
import org.apache.commons.lang3.tuple.ImmutablePair;
import org.apache.commons.lang3.tuple.Pair;

/**
 * Created by Shibi on 10-11-2014.
 */
public class KohlsIllegalArgumentException extends RuntimeException {
    private static final long serialVersionUID = -1858175278637083040L;

    private final Pair<Class, Object> blame;

    public KohlsIllegalArgumentException(final String message) {
        super(message);
        this.blame = null;
    }

    public KohlsIllegalArgumentException(final String message, final Throwable cause) {
        super(message, cause);
        this.blame = null;
    }

    public KohlsIllegalArgumentException(final String message, final Object blame) {
        super(message);
        this.blame = blame != null ? new ImmutablePair<Class, Object>(blame.getClass(), blame) : null;
    }

    public KohlsIllegalArgumentException(final String message, final Throwable cause, final Object blame) {
        super(message, cause);
        this.blame = blame != null ? new ImmutablePair<Class, Object>(blame.getClass(), blame) : null;
    }

    protected Pair<Class, Object> getBlame() {
        return blame;
    }

    public boolean hasBlame() {
        return blame != null;
    }

    public <T> Optional<T> getBlameObject(final Class<T> clazz) {

        if (hasBlame() && clazz.isAssignableFrom(blame.getLeft())) {

            return Optional.of((T) blame.getRight());
        }
        return Optional.absent();
    }



}
