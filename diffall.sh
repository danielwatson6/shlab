for i in $(seq -f "%02g" 1 16); do
  echo -e "\nJOB $i";
  diff <(make rtest$i | tail -n +2) <(make test$i | tail -n +2 );
done
