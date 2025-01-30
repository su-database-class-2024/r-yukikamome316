SELECT
  country.country,
  COUNT(customer.customer_id) AS customer_count,
  SUM(payment.amount) AS total_sales
FROM
  payment
  LEFT JOIN customer ON payment.customer_id = customer.customer_id
  LEFT JOIN address ON customer.address_id = address.address_id
  LEFT JOIN city ON address.city_id = city.city_id
  LEFT JOIN country ON city.country_id = country.country_id
GROUP BY
  country.country
ORDER BY
  total_sales DESC;

-- Result:
--                 country                | customer_count | total_sales
-- ---------------------------------------+----------------+-------------
--  India                                 |           1422 |     6034.78
--  China                                 |           1297 |     5251.03
--  United States                         |            869 |     3685.31
--  Japan                                 |            749 |     3122.51
--  Mexico                                |            718 |     2984.82
--  Brazil                                |            681 |     2919.19
--  Russian Federation                    |            638 |     2765.62
--  Philippines                           |            530 |     2219.70
--  Turkey                                |            351 |     1498.49
--  Indonesia                             |            331 |     1352.69
--  Nigeria                               |            308 |     1314.92
--  Argentina                             |            320 |     1298.80
--  Taiwan                                |            290 |     1155.10
--  South Africa                          |            254 |     1069.46
--  Iran                                  |            204 |      877.96
--  United Kingdom                        |            204 |      850.96
--  Poland                                |            184 |      786.16
--  Italy                                 |            174 |      753.26
--  Germany                               |            176 |      741.24
--  Vietnam                               |            155 |      676.45
--  Ukraine                               |            147 |      675.53
--  Colombia                              |            146 |      661.54
--  Egypt                                 |            152 |      659.48
--  Venezuela                             |            157 |      632.43
--  Canada                                |            130 |      559.70
--  Netherlands                           |            127 |      557.73
--  South Korea                           |            123 |      527.77
--  Spain                                 |            120 |      513.80
--  Yemen                                 |            107 |      473.93
--  Pakistan                              |            116 |      473.84
--  Saudi Arabia                          |            106 |      452.94
--  Peru                                  |             99 |      407.01
--  Thailand                              |             92 |      401.08
--  Israel                                |             87 |      379.13
--  Ecuador                               |             82 |      369.18
--  Bangladesh                            |             81 |      353.19
--  Algeria                               |             82 |      349.18
--  France                                |             88 |      334.12
--  Malaysia                              |             77 |      330.23
--  Tanzania                              |             78 |      322.22
--  Mozambique                            |             75 |      315.25
--  United Arab Emirates                  |             75 |      305.25
--  Dominican Republic                    |             74 |      304.26
--  Chile                                 |             66 |      303.34
--  Austria                               |             70 |      284.30
--  Morocco                               |             65 |      274.35
--  Paraguay                              |             60 |      273.40
--  Belarus                               |             64 |      271.36
--  Latvia                                |             57 |      249.43
--  Switzerland                           |             59 |      248.41
--  Kenya                                 |             51 |      245.49
--  Yugoslavia                            |             51 |      233.49
--  Puerto Rico                           |             52 |      224.48
--  Romania                               |             58 |      218.42
--  Runion                                |             45 |      211.55
--  French Polynesia                      |             48 |      205.52
--  Greece                                |             46 |      204.54
--  Sudan                                 |             49 |      202.51
--  Azerbaijan                            |             47 |      198.53
--  Bulgaria                              |             48 |      194.52
--  Kazakstan                             |             49 |      192.51
--  Angola                                |             45 |      187.55
--  Cameroon                              |             51 |      186.49
--  Myanmar                               |             47 |      179.53
--  Cambodia                              |             49 |      179.51
--  Bolivia                               |             44 |      178.56
--  Congo, The Democratic Republic of the |             42 |      168.58
--  Oman                                  |             44 |      161.56
--  Holy See (Vatican City State)         |             32 |      146.68
--  Nauru                                 |             30 |      143.70
--  Sweden                                |             33 |      139.67
--  Czech Republic                        |             28 |      132.72
--  Moldova                               |             34 |      127.66
--  Turkmenistan                          |             26 |      126.74
--  Chad                                  |             28 |      122.72
--  Malawi                                |             27 |      121.73
--  Zambia                                |             30 |      121.70
--  Virgin Islands, U.S.                  |             31 |      121.69
--  Greenland                             |             28 |      119.72
--  Armenia                               |             25 |      118.75
--  Gambia                                |             27 |      114.73
--  Iraq                                  |             27 |      111.73
--  Hungary                               |             29 |      111.71
--  Bahrain                               |             24 |      108.76
--  North Korea                           |             29 |      107.71
--  Brunei                                |             34 |      107.66
--  Kuwait                                |             25 |      106.75
--  Estonia                               |             28 |      105.72
--  Hong Kong                             |             24 |      104.76
--  Sri Lanka                             |             27 |      103.73
--  Liechtenstein                         |             26 |       99.74
--  Anguilla                              |             32 |       99.68
--  French Guiana                         |             20 |       97.80
--  Faroe Islands                         |             24 |       96.76
--  Senegal                               |             24 |       95.76
--  Nepal                                 |             17 |       93.83
--  Tuvalu                                |             22 |       93.78
--  Madagascar                            |             21 |       92.79
--  Ethiopia                              |             23 |       91.77
--  New Zealand                           |             23 |       85.77
--  Slovakia                              |             23 |       80.77
--  Finland                               |             21 |       78.79
--  Tunisia                               |             22 |       73.78
--  Afghanistan                           |             18 |       67.82
--  Tonga                                 |             16 |       64.84
--  Saint Vincent and the Grenadines      |             18 |       64.82
--  Lithuania                             |             22 |       63.78
--  American Samoa                        |             15 |       47.85
-- (108 rows)
