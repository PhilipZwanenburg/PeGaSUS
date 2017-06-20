#define BOOST_TEST_MODULE test_ex1_dyn
#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>
using namespace boost::unit_test;

BOOST_AUTO_TEST_CASE(first_test)
{
	int i = 1;
	BOOST_TEST(i);
	BOOST_TEST(i == 2);
}
