#include "gtest/gtest.h"
#include "test.h"
namespace{
TEST(simple, simpletest){
	EXPECT_EQ(testfunc(3),7);
}

}
GTEST_API_ int main(int argc, char **argv) {
  printf("Running main() from gtest_main.cc\n");
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
