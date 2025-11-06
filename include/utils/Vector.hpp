#pragma once
#include <iostream>

class Vector
{
public:
    Vector(float x, float y);
    Vector();
    ~Vector();

    Vector operator+(const Vector& otherVector) const;
    Vector& operator+=(const Vector& other) ;
    Vector& operator/=(float scalar) ;
    Vector operator-(Vector &otherVector) const;
    Vector& operator-=(const Vector& other) ;
    bool operator==(Vector &otherVector);
    Vector operator/(float scalar) const;
    Vector operator*(float scalar) const;
    float squaredDistanceTo(const Vector& other);
    float distanceTo(const Vector &other);
    Vector normalize();
    float operator[](int index);

public:
    float x;
    float y;
};