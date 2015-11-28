User.create!([
  {email: "pato_navarro@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2015-10-27 18:04:08", last_sign_in_at: "2015-10-27 17:55:11", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Patricio", last_name: "Navarro", address: "Virrey Arreondo 2782", city: "CABA", country: "Argentina", phone: "45537878", cellphone: "1167861234", social_security: "CORPOMEDICIM", social_security_plan: "GOLD_PREMIUM", social_security_number: "4894655628998", marital_status: "SOLTERO", birhtday: "1989-11-09", profesion: "Developer", sex: "M", job_hs: 6, job_type: "MODERADA", weight_max: "75.0", weight_min: "60.0", weight_avg: "68.0", weight_now: "70.0", weight_exp: "64.0", objective: "Aca va el objetivo", family: "Novia", cooks: "SI", buys: "SI", allergies: "", kosher: true, vegetarian: false, ovolacto: false, lacto: false, pork: false, meat: false, chicken: false, fish: false, celiac: false, swallowing: false, mastication: false, nausea: false, diarrhea: false, vomits: true, constipation: false, anemia: false, hypertension: false, diabetes: false, heart_problems: false, overweight: false, cholesterol: false, bulimia: false, anorexia: false, cancer: false, cancer_type: "", illness_other: "", smoker: true, smoker_amount: "5", medication: "", wrist_size: 15, height: "1.83", vitamins: "", sport1: "Running", sport1_frecuency: 2, sport2: "Futbol", sport2_frecuency: 2, sport3: "", sport3_frecuency: nil, menstruation: nil, how_meet: "INTERNET", comments: "Aca van los comentarios", intestinal_diseases: false},
  {email: "magual89@gmail.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 5, current_sign_in_at: "2015-11-21 23:09:12", last_sign_in_at: "2015-11-14 22:42:12", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", name: "Matias", last_name: "Alvarez", address: "Av Donato Alvarez 2629", city: "CABA", country: "Argentina", phone: "45536552", cellphone: "1158964340", social_security: "OSDE", social_security_plan: "210", social_security_number: "4894655628998", marital_status: "SOLTERO", birhtday: "1989-02-14", profesion: "Analista de I+D", sex: "M", job_hs: 8, job_type: "LIVIANA", weight_max: "65.0", weight_min: "50.0", weight_avg: "60.0", weight_now: "55.0", weight_exp: "58.0", objective: "Alcanzar mi peso deseado en el menor tiempo posible y mantenerme en el mismo.", family: "Padres, hermanos, abuela", cooks: "NO", buys: "NO", allergies: "", kosher: false, vegetarian: false, ovolacto: false, lacto: false, pork: false, meat: false, chicken: false, fish: false, celiac: false, swallowing: false, mastication: false, nausea: false, diarrhea: false, vomits: false, constipation: false, anemia: false, hypertension: false, diabetes: false, heart_problems: false, overweight: false, cholesterol: false, bulimia: false, anorexia: false, cancer: false, cancer_type: "", illness_other: "", smoker: false, smoker_amount: "", medication: "", wrist_size: 15, height: "1.75", vitamins: "No", sport1: "Running", sport1_frecuency: 2, sport2: "", sport2_frecuency: nil, sport3: "", sport3_frecuency: nil, menstruation: nil, how_meet: "PACIENTE: Nicolás Alvarez", comments: "Aca van los comentarios", intestinal_diseases: false}
])
History.create!([
  {date: "2015-10-27", weight: "100.0", waist: "10.0", hip: "37.0", leg: "20.0", fat: "100.0", user_id: 1},
  {date: "2015-11-03", weight: "68.0", waist: "15.0", hip: "32.0", leg: "17.0", fat: "60.0", user_id: 1},
  {date: "2015-11-10", weight: "61.5", waist: "18.0", hip: "22.0", leg: "32.0", fat: nil, user_id: 1},
  {date: "2015-11-17", weight: "50.0", waist: "12.0", hip: "40.0", leg: "32.0", fat: "60.0", user_id: 1},
  {date: "2015-11-24", weight: "59.7", waist: "12.5", hip: "40.2", leg: "29.8", fat: nil, user_id: 1},
  {date: "2015-12-01", weight: "50.0", waist: "12.0", hip: "22.0", leg: "22.0", fat: "60.0", user_id: 1},
  {date: "2015-12-08", weight: "61.5", waist: "12.5", hip: "22.0", leg: "29.8", fat: nil, user_id: 1},
  {date: "2015-10-27", weight: "62.0", waist: "20.0", hip: "35.0", leg: "32.0", fat: nil, user_id: 2}
])
Diet.create!([
  {fecal_incontinence: false, hemacromotosis: false, celiac: false, irritable_colon: false, pregnancy: false, ovolact: false, kosher: false, without_fibers: false, allowed_foods: false, breakfast_fruits: 1, breakfast_lacteals: 1, breakfast_starch: 1, collation_fruits: 2, collation_lacteals: 2, collation_starch: 2, lunch_starch: 2, lunch_vegetables: 3, luch_fats: 3, lunch_fruits: 3, lunch_lacteals: 3, lunch_meats: 4, dinner_starch: 5, dinner_vegetables: 5, dinner_fats: 5, dinner_fruits: 5, dinner_lacteals: 5, dinner_meats: 5, merienda_fruits: 4, merienda_lacteals: 4, merienda_starch: 4, user_id: 1, menu: nil, celiac_menu: nil, infant_menu: nil, ovolact_menu: nil, gastrointestinal_menu: nil, uric_acid_gout: nil, gas_forming_foods: nil, anemia: nil, anticoagulantes: nil, sports_drink: nil, soft_mechanics: nil, cholesterol: nil, breakfast_snacks: nil, diarrhea: nil, diverticulosis: nil, gastritis: nil, hypertension: nil, glycemic_index: nil, osteoporosis: nil, hyperproteic_first_second: nil, hyperproteic_third: nil, hyperproteic_fourth: nil, fruits_vegetables: nil, hc_reduced_plan: nil, cow_proteins: nil, reflux: nil, renal: nil, monohydrate_creatine_sup: nil, vomiting: nil},
  {fecal_incontinence: false, hemacromotosis: false, celiac: false, irritable_colon: false, pregnancy: false, ovolact: false, kosher: true, without_fibers: false, allowed_foods: false, breakfast_fruits: 1, breakfast_lacteals: 2, breakfast_starch: 3, collation_fruits: 4, collation_lacteals: 1, collation_starch: 2, lunch_starch: 3, lunch_vegetables: 4, luch_fats: 1, lunch_fruits: 2, lunch_lacteals: 3, lunch_meats: 4, dinner_starch: 2, dinner_vegetables: 2, dinner_fats: 1, dinner_fruits: 2, dinner_lacteals: 4, dinner_meats: 3, merienda_fruits: 2, merienda_lacteals: 2, merienda_starch: 3, user_id: 2, menu: nil, celiac_menu: nil, infant_menu: nil, ovolact_menu: nil, gastrointestinal_menu: nil, uric_acid_gout: nil, gas_forming_foods: nil, anemia: nil, anticoagulantes: nil, sports_drink: nil, soft_mechanics: nil, cholesterol: nil, breakfast_snacks: nil, diarrhea: nil, diverticulosis: nil, gastritis: nil, hypertension: nil, glycemic_index: nil, osteoporosis: nil, hyperproteic_first_second: nil, hyperproteic_third: nil, hyperproteic_fourth: nil, fruits_vegetables: nil, hc_reduced_plan: nil, cow_proteins: nil, reflux: nil, renal: nil, monohydrate_creatine_sup: nil, vomiting: nil}
])
