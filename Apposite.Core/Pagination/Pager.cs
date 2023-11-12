﻿namespace Apposite.Core.Pagination
{
    public class Pager
    {
        public decimal PageNumber { get; set; }
        public decimal PageSize { get; set; }
        public decimal TotalPages
        {
            get
            {
                return Convert.ToInt32(Math.Ceiling(((double)TotalRecords / (double)PageSize)));
            }
        }
        public decimal TotalRecords { get; set; }
    }
}