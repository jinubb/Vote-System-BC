state.var{
  VoteCounter_1st = state.value()  -- 투표 수
}

function constructor()
  VoteCounter_1st:set(0) -- 투표 수를 0으로 초기화
end

function default()
  local limitAmount = "1000"  -- 1 coin 만 받도록 설정
  local amount = system.getAmount()

  checkAmount(amount, limitAmount)

end

function checkAmount(amount, limitAmount)
  local checked = (amount == limitAmount)
  if checked==true then
    VoteCounter_1st:set(getVoteCounter_1st()+1)  -- 1 coin 을 보냈다면 VoteCounter를 1 증가시킨다
  end

  assert(checked, "Error. Please send 1 coin.")  -- 1 coin 이외의 금액을 보내면 에러메시지를 보내고 받지 않음
end

function getVoteCounter_1st()  -- 후보자의 투표수 확인
  return VoteCounter_1st:get()
end

function setVoteCounter_1st(value)
  return VoteCounter_1st:set(value)
end

abi.register_view(getVoteCounter_1st)
abi.register(setVoteCounter_1st)
abi.payable(default)
