class TcpTestTest < DaFunk::Test.case
  def test_perform_tcp
    assert_equal "CLOUDWALK TEST 1234567890\n", TcpTest.perform
  end
end

