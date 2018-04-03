require_relative '../../../../lib/application_insights/channel/contracts/remote_dependency_data'
require 'test/unit'

include ApplicationInsights::Channel

class TestRemoteDependencyData < Test::Unit::TestCase
  def test_initialize
    item = Contracts::RemoteDependencyData.new
    assert_not_nil item
  end

  def test_ver_works_as_expected
    expected = 42
    item = Contracts::RemoteDependencyData.new
    item.ver = expected
    actual = item.ver
    assert_equal expected, actual
    expected = 13
    item.ver = expected
    actual = item.ver
    assert_equal expected, actual
  end

  def test_name_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.name = expected
    actual = item.name
    assert_equal expected, actual
    expected = 'Other string'
    item.name = expected
    actual = item.name
    assert_equal expected, actual
  end

  def test_id_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.id = expected
    actual = item.id
    assert_equal expected, actual
    expected = 'Other string'
    item.id = expected
    actual = item.id
    assert_equal expected, actual
  end

  def test_result_code_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.result_code = expected
    actual = item.result_code
    assert_equal expected, actual
    expected = 'Other string'
    item.result_code = expected
    actual = item.result_code
    assert_equal expected, actual
  end

  def test_duration_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.duration = expected
    actual = item.duration
    assert_equal expected, actual
    expected = 'Other string'
    item.duration = expected
    actual = item.duration
    assert_equal expected, actual
  end

  def test_success_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.success = expected
    actual = item.success
    assert_equal expected, actual
    expected = 'Other string'
    item.success = expected
    actual = item.success
    assert_equal expected, actual
  end

  def test_data_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.data = expected
    actual = item.data
    assert_equal expected, actual
    expected = 'Other string'
    item.data = expected
    actual = item.data
    assert_equal expected, actual
  end

  def test_target_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.target = expected
    actual = item.target
    assert_equal expected, actual
    expected = 'Other string'
    item.target = expected
    actual = item.target
    assert_equal expected, actual
  end

  def test_type_works_as_expected
    expected = 'Test string'
    item = Contracts::RemoteDependencyData.new
    item.type = expected
    actual = item.type
    assert_equal expected, actual
    expected = 'Other string'
    item.type = expected
    actual = item.type
    assert_equal expected, actual
  end

  def test_properties_works_as_expected
    item = Contracts::RemoteDependencyData.new
    actual = item.properties
    assert_not_nil actual
  end

  def test_measurements_works_as_expected
    item = Contracts::RequestData.new
    actual = item.measurements
    assert_not_nil actual
  end

  def test_to_json_works_as_expected
    item = Contracts::RemoteDependencyData.new
    item.ver = 42
    item.name = 'Test string'
    item.result_code = '200'
    item.duration = '1.5'
    item.success = true
    item.data = 'data'
    item.target = 'localhost'
    item.type = 'HTTP'

    { 'key1' => 'test value 1' , 'key2' => 'test value 2' }.each do |key, value|
      item.properties[key] = value
    end
    { 'key1' => 3.1415 , 'key2' => 42.2 }.each do |key, value|
      item.measurements[key] = value
    end
    actual = item.to_json
    expected = '{"ver":42,"name":"Test string","resultCode":"200","duration":"1.5","success":true,"data":"data","target":"localhost","type":"HTTP","properties":{"key1":"test value 1","key2":"test value 2"},"measurements":{"key1":3.1415,"key2":42.2}}'
    assert_equal expected, actual
  end
end
