defmodule VistaMoveEngineStack.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 65, slack: 21, drag: 19, confidence: 57}
    assert VistaMoveEngineStack.DomainReview.score(item) == 151
    assert VistaMoveEngineStack.DomainReview.lane(item) == "ship"
  end
end
