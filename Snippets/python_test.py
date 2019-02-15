import unittest
import x as thing

class NameOfTest(unittest.TestCase):
    def test_throw_exception(self):
        with self.assertRaisesWithMessage(Exception):
            thing.handle_error_by_throwing_exception()

    @unittest.skip('skip message')
    def test_return_tuple(self):
        successful_result, result = thing.handle_error_by_returning_tuple('1')
        self.assertIs(successful_result, True,
                'Valid input should be successful')
        self.assertEqual(result, 1, 'Result of valid input should not be None')




