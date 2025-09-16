FROM gcc:12.2.0

RUN apt-get update && apt-get install -y doxygen graphviz

WORKDIR /usr/src/myapp

COPY . .

RUN g++ -std=c++17 -o fraction_app fraction.cpp main.cpp
RUN g++ -std=c++17 -o test_app fraction.cpp test.cpp
RUN doxygen Doxyfile

CMD ["./test_app"]
