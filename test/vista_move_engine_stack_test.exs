defmodule VistaMoveEngineStackTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 55, capacity: 103, latency: 18, risk: 22, weight: 11}
    assert VistaMoveEngineStack.score(signal_case_1) == 89
    assert VistaMoveEngineStack.classify(signal_case_1) == "review"
    signal_case_2 = %{demand: 94, capacity: 94, latency: 26, risk: 23, weight: 4}
    assert VistaMoveEngineStack.score(signal_case_2) == 123
    assert VistaMoveEngineStack.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 103, capacity: 73, latency: 23, risk: 15, weight: 12}
    assert VistaMoveEngineStack.score(signal_case_3) == 182
    assert VistaMoveEngineStack.classify(signal_case_3) == "accept"
  end
end
