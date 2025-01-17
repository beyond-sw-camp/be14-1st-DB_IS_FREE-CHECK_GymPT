SELECT * FROM winfo;

INSERT INTO wInfo (winfo_name, winfo_rule, winfo_intensity) VALUES
('렛 풀다운', '어깨너비로 바를 잡고 팔꿈치를 내리고 팔꿈치가 몸에 가깝게 유지되도록 하여 수축시킨다.', 6),
('벤치 프레스', '가슴을 펴고 팔꿈치를 90도로 구부리며 바벨을 내렸다가 다시 밀어 올린다.', 8),
('런닝', '자유롭게 달리며 페이스를 조절한다. 처음에는 천천히 시작해서 점차 속도를 올린다.', 5),
('배드민턴', '라켓을 잡고 빠른 발놀림과 스윙으로 상대방의 코트에 셔틀콕을 떨어뜨린다.', 7),
('스쿼트', '발을 어깨너비로 벌리고 무릎이 발끝을 넘지 않도록 하며 엉덩이를 낮추어 몸을 일으킨다.', 9),
('푸시업', '어깨너비로 팔을 벌리고 상체를 낮췄다가 팔꿈치를 펴며 몸을 올린다.', 4),
('덤벨 컬', '덤벨을 잡고 팔꿈치를 고정한 후 덤벨을 들어 올려 이두근을 수축시킨다.', 6),
('플랭크', '팔꿈치와 발끝을 지지대로 하여 몸을 일자로 유지하며 버틴다.', 4),
('사이클', '자전거를 타며 페달을 일정한 속도로 밟아 체력을 향상시킨다.', 5),
('풀업', '철봉에 손을 잡고 팔꿈치를 굽혀 몸을 끌어올리며 상체를 조절한다.', 9);

INSERT INTO wInfo (winfo_name, winfo_rule, winfo_intensity) VALUES
('바벨 로우', '바벨을 양손으로 잡고 허리를 굽히고 팔꿈치를 뒤로 당기면서 날개를 수축시킨다.', 7),
('러닝 머신', '러닝 머신 위에서 일정한 속도로 달리며 체력과 지구력을 기른다.', 6),
('자전거 타기', '자전거를 타고 페달을 밟으며 교차된 방향으로 다리를 움직인다.', 5),
('크런치', '무릎을 구부리고 배를 수축시키며 상체를 올린다.', 3),
('죽구', '발을 어깨 너비로 벌리고 공을 발로 차서 상대편 골대에 넣는다.', 8),
('암벽등반', '암벽을 타고 올라가며 팔과 다리의 근력을 모두 사용한다.', 10),
('케틀벨 스윙', '케틀벨을 두 손으로 잡고 다리를 벌린 상태에서 무릎을 구부리며 케틀벨을 스윙한다.', 7),
('버피 테스트', '푸시업, 점프 등을 결합한 전신 운동으로 빠르게 반복한다.', 9),
('덤벨 숄더 프레스', '덤벨을 어깨높이에 두고 팔꿈치를 펴며 덤벨을 머리 위로 밀어 올린다.', 7),
('컬링', '덤벨을 한 손씩 잡고 팔꿈치를 구부린 후 덤벨을 몸쪽으로 당긴다.', 6),
('힙 쓰러스트', '어깨를 벤치에 놓고 무릎을 구부린 후 엉덩이를 들어 올려 엉덩이 근육을 활성화시킨다.', 8),
('팔꿈치 스쿼트', '무릎을 90도로 구부린 상태에서 팔꿈치와 발끝을 일직선으로 유지하며 앉았다 일어난다.', 6),
('웨이트 트레이닝', '다양한 웨이트 기구를 사용하여 상체와 하체를 강화하는 운동이다.', 7),
('버터플라이 머신', '두 팔을 벌리며 등과 가슴을 이용해 가슴 근육을 자극한다.', 6),
('케이블 로우', '케이블 기구를 사용하여 팔꿈치를 몸에 가까운 상태로 당긴다.', 7),
('팔꿈치 푸시업', '두 팔꿈치를 접고 팔꿈치 위치를 조절하며 상체를 내리고 올린다.', 4),
('트레드밀 워킹', '트레드밀 위에서 걷기 운동을 하며 체력과 다리 근력을 키운다.', 3),
('수영', '자유형, 배영, 접영 등 다양한 수영 스타일로 전신을 이용한 운동을 한다.', 8),
('레그 프레스', '다리로 무게를 밀어내면서 하체 근육을 강화하는 운동이다.', 7),
('에어로빅', '댄스를 포함한 유산소 운동으로 체력을 기르고 몸을 움직인다.', 6),
('시티즈닝', '짧은 시간에 전신을 활용하는 고강도 운동을 반복한다.', 8),
('하이 인텐시티 인터벌 트레이닝(HIIT)', '짧은 시간 동안 강도 높은 운동을 반복하며 체지방을 줄인다.', 9),
('체중 운동', '몸의 무게를 이용해 풀업, 푸시업, 스쿼트 등 기본적인 운동을 한다.', 5),
('자전거 스피닝', '고정식 자전거에서 빠르게 페달을 밟으며 강도를 조절한다.', 7),
('유산소 운동', '심박수를 높이며 지방 연소와 체력 향상에 초점을 맞춘 운동이다.', 6),
('하체 강화 운동', '레그 프레스, 스쿼트 등 하체 근육을 집중적으로 강화하는 운동이다.', 8),
('상체 강화 운동', '푸시업, 벤치프레스 등 상체 근육을 집중적으로 강화하는 운동이다.', 7),
('인라인 스케이트', '인라인 스케이트를 타고 스피드를 높이며 하체 근육을 단련한다.', 6),
('야구', '배트로 공을 치고 뛰면서 전신을 활용하는 운동이다.', 5),
('테니스', '테니스 라켓을 사용하여 상대와 공을 주고받으며 전신을 사용한다.', 6),
('줄넘기', '줄을 넘으면서 전신을 사용해 유산소 운동 효과를 높인다.', 4),
('자세 교정 운동', '올바른 자세를 유지하고 교정하는 운동으로 유연성과 체형을 개선한다.', 5);

INSERT INTO wInfo (winfo_name, winfo_rule, winfo_intensity) VALUES
('플랭크', '팔꿈치와 발끝을 지지대로 하여 몸을 일직선으로 유지하며 버틴다.', 4),
('트라이셉스 딥', '벤치에 손을 올리고 팔꿈치를 굽혀 상체를 내린 후 다시 팔꿈치를 펴며 일어선다.', 6),
('버터플라이', '두 손으로 덤벨을 잡고 팔꿈치를 굽힌 상태에서 팔을 벌린 후 다시 모은다.', 6),
('다운독', '손과 발을 바닥에 두고 엉덩이를 높여 몸을 삼각형 모양으로 만든다.', 4),
('스쿼트 점프', '스쿼트를 한 후 상체를 밀어 올리며 점프를 한다.', 8),
('에어 바이크', '상체와 하체를 동시에 움직여 체력과 유산소 능력을 향상시킨다.', 7),
('하이킥', '다리를 빠르게 차며 하체 근육과 유연성을 증가시킨다.', 5),
('레그 익스텐션', '앉아서 다리를 펴고 무릎을 구부렸다 펴며 하체 근육을 강화한다.', 6),
('드래곤 플래그', '상체를 벤치에 놓고 다리를 들어 올리며 몸을 일자로 만든 후 내린다.', 10),
('힙 힌지', '엉덩이를 뒤로 밀며 다리 근육을 자극하고 다시 일어선다.', 7),
('벽걸이 푸시업', '벽에 손을 대고 벽을 밀어내며 팔꿈치를 펴는 푸시업을 한다.', 3),
('캣카우', '몸을 둥글게 만들고 고양이처럼 상체와 하체를 동시에 움켜잡으며 자세를 변형시킨다.', 4),
('바디웨이트 스쿼트', '몸의 무게만 이용해 스쿼트를 반복하여 하체를 강화한다.', 5),
('덤벨 스내치', '덤벨을 한 손에 들고 바닥에서 위로 올려 손끝까지 이어주는 운동이다.', 8),
('핸드 스탠드 푸시업', '손목을 바닥에 두고 몸을 위로 밀어내는 푸시업을 한다.', 9),
('케틀벨 스내치', '케틀벨을 손에 들고 한 번에 몸을 일으켜 상체와 하체를 모두 강화한다.', 8),
('스텝업', '벤치나 박스를 이용하여 다리를 올리며 하체를 강화한다.', 6),
('푸시업 변형', '다양한 손 위치로 푸시업을 하여 상체 근육을 더욱 자극한다.', 5),
('플라이 머신', '팔꿈치를 고정한 후 덤벨을 들어 올려 가슴 근육을 자극하는 운동이다.', 7),
('다리 찢기', '다리를 넓게 벌리고 서서 유연성을 키우는 운동이다.', 4);
