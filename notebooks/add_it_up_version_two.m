function SUM = add_it_up_version_two(v)
    SUM = 0;
    m = length(v);
    for i = 1:m
        SUM = SUM + v(i);
    end
end