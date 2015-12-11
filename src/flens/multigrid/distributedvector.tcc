namespace flens {
    
template <typename RHS>
DistributedVector &
DistributedVector::operator=(const Vector<RHS> & rhs)
{
    copy(rhs.impl(), *this);
    return *this;
}

template <typename RHS>
DistributedVector &
DistributedVector::operator+=(const Vector<RHS> & rhs)
{
    axpy(1, rhs.impl(), *this);
    return *this;
}
    
} // namespace flens
