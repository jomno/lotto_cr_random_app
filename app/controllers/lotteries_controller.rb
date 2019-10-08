class LotteriesController < ApplicationController
  def index
    @lotteries = Lotto.all
  end

  def new
  end

  def create
    lotto = Lotto.new
    
    # 1부터 45까지 숫자를 배열로 변환
    entry = (1..45).to_a
    
    # 거기서 사용자가 입력한 값 제외하기
    entry.delete(params[:num1])
    entry.delete(params[:num2])
    
    # 거기서 무작위 4개를 뽑고
    sample = entry.sample(4)
    
    # sample에다가 사용자가 입력한 값 집어넣기 (사용자가 입력한 값 포함한 6개의 로또 번호를 만들기 위해)
    sample << params[:num1].to_i
    sample << params[:num2].to_i
    
    # 사용자 입력값 2, 무작위 4개를 정렬
    sorted = sample.sort
    
    # 각 컬럼에 값 부여
    lotto.num1 = sorted[0]
    lotto.num2 = sorted[1]
    lotto.num3 = sorted[2]
    lotto.num4 = sorted[3]
    lotto.num5 = sorted[4]
    lotto.num6 = sorted[5]
    
    # 저장
    lotto.save
    
    # 이동
    redirect_to "/lotteries/index"
  end
end
