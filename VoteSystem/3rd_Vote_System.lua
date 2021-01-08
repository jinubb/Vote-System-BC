state.var{
  VoteCounter_3rd = state.value()  -- 투표 수
}

function constructor()
  VoteCounter_3rd:set(0) -- 투표 수를 0으로 초기화
end

function default()
  local limitAmount = "1000"  -- 1 coin 만 받도록 설정
  local amount = system.getAmount()

  checkAmount(amount, limitAmount)

end

function checkAmount(amount, limitAmount)
  local checked = (amount == limitAmount)
  if checked==true then
    VoteCounter_3rd:set(getVoteCounter_3rd()+1)  -- 1 coin 을 보냈다면 VoteCounter를 1 증가시킨다
  end

  assert(checked, "Error. Please send 1 coin.")  -- 1 coin 이외의 금액을 보내면 에러메시지를 보내고 받지 않음
end

function getVoteCounter_3rd()  -- 후보자의 투표수 확인
  return VoteCounter_3rd:get()
end

function setVoteCounter_3rd(value)
  return VoteCounter_3rd:set(value)
end

abi.register_view(getVoteCounter_3rd)
abi.register(setVoteCounter_3rd)
abi.payable(default)
