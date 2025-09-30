% BankBalance.m
% Calculates compound interest with monthly deposits

initial_balance = 1000;
annual_rate = 0.05;  % 5% interest
monthly_rate = annual_rate / 12;
years = 10; 
months = years * 12; %total # of months

monthly_deposits = [0, 100, 200, 300, 400, 500];

fprintf('Bank Balance after %d years with 5% annual interest: \n\n', years);
fprintf('Monthly Deposit | Final Balance\n');
fprintf('----------------------------------------------------------------');

for deposit = monthly_deposits
    balance = initial_balance;

    for month = 1:months
        % Add interest and monthly deposit
        balance = balance * (1 + monthly_rate) + deposit;
    end

    fprintf('$%13.0f | $%12.2f\n', deposit, balance);
end