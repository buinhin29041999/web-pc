package paging;

import Sort.Sorter;

public interface Pageble {
    Integer getPage();

    Integer getOffset();

    Integer getLimit();

    Sorter getSorter();
}
