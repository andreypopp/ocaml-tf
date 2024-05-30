(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type password_hash = {
  algorithm : string prop;
  salt : string prop option; [@option]
  salt_order : string prop option; [@option]
  value : string prop;
  work_factor : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : password_hash) -> ()

let yojson_of_password_hash =
  (function
   | {
       algorithm = v_algorithm;
       salt = v_salt;
       salt_order = v_salt_order;
       value = v_value;
       work_factor = v_work_factor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_work_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "work_factor", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         match v_salt_order with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "salt_order", arg in
             bnd :: bnds
       in
       let bnds =
         match v_salt with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "salt", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : password_hash -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_password_hash

[@@@deriving.end]

type okta_user = {
  city : string prop option; [@option]
  cost_center : string prop option; [@option]
  country_code : string prop option; [@option]
  custom_profile_attributes : string prop option; [@option]
  custom_profile_attributes_to_ignore : string prop list option;
      [@option]
  department : string prop option; [@option]
  display_name : string prop option; [@option]
  division : string prop option; [@option]
  email : string prop;
  employee_number : string prop option; [@option]
  expire_password_on_create : bool prop option; [@option]
  first_name : string prop;
  honorific_prefix : string prop option; [@option]
  honorific_suffix : string prop option; [@option]
  id : string prop option; [@option]
  last_name : string prop;
  locale : string prop option; [@option]
  login : string prop;
  manager : string prop option; [@option]
  manager_id : string prop option; [@option]
  middle_name : string prop option; [@option]
  mobile_phone : string prop option; [@option]
  nick_name : string prop option; [@option]
  old_password : string prop option; [@option]
  organization : string prop option; [@option]
  password : string prop option; [@option]
  password_inline_hook : string prop option; [@option]
  postal_address : string prop option; [@option]
  preferred_language : string prop option; [@option]
  primary_phone : string prop option; [@option]
  profile_url : string prop option; [@option]
  recovery_answer : string prop option; [@option]
  recovery_question : string prop option; [@option]
  second_email : string prop option; [@option]
  skip_roles : bool prop option; [@option]
  state : string prop option; [@option]
  status : string prop option; [@option]
  street_address : string prop option; [@option]
  timezone : string prop option; [@option]
  title : string prop option; [@option]
  user_type : string prop option; [@option]
  zip_code : string prop option; [@option]
  password_hash : password_hash list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user) -> ()

let yojson_of_okta_user =
  (function
   | {
       city = v_city;
       cost_center = v_cost_center;
       country_code = v_country_code;
       custom_profile_attributes = v_custom_profile_attributes;
       custom_profile_attributes_to_ignore =
         v_custom_profile_attributes_to_ignore;
       department = v_department;
       display_name = v_display_name;
       division = v_division;
       email = v_email;
       employee_number = v_employee_number;
       expire_password_on_create = v_expire_password_on_create;
       first_name = v_first_name;
       honorific_prefix = v_honorific_prefix;
       honorific_suffix = v_honorific_suffix;
       id = v_id;
       last_name = v_last_name;
       locale = v_locale;
       login = v_login;
       manager = v_manager;
       manager_id = v_manager_id;
       middle_name = v_middle_name;
       mobile_phone = v_mobile_phone;
       nick_name = v_nick_name;
       old_password = v_old_password;
       organization = v_organization;
       password = v_password;
       password_inline_hook = v_password_inline_hook;
       postal_address = v_postal_address;
       preferred_language = v_preferred_language;
       primary_phone = v_primary_phone;
       profile_url = v_profile_url;
       recovery_answer = v_recovery_answer;
       recovery_question = v_recovery_question;
       second_email = v_second_email;
       skip_roles = v_skip_roles;
       state = v_state;
       status = v_status;
       street_address = v_street_address;
       timezone = v_timezone;
       title = v_title;
       user_type = v_user_type;
       zip_code = v_zip_code;
       password_hash = v_password_hash;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_password_hash then bnds
         else
           let arg =
             (yojson_of_list yojson_of_password_hash) v_password_hash
           in
           let bnd = "password_hash", arg in
           bnd :: bnds
       in
       let bnds =
         match v_zip_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zip_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_user_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_title with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "title", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timezone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "timezone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_street_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "street_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_skip_roles with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_roles", arg in
             bnd :: bnds
       in
       let bnds =
         match v_second_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "second_email", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_question with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_question", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_answer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "recovery_answer", arg in
             bnd :: bnds
       in
       let bnds =
         match v_profile_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_primary_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "primary_phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_preferred_language with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "preferred_language", arg in
             bnd :: bnds
       in
       let bnds =
         match v_postal_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "postal_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password_inline_hook with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password_inline_hook", arg in
             bnd :: bnds
       in
       let bnds =
         match v_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization", arg in
             bnd :: bnds
       in
       let bnds =
         match v_old_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "old_password", arg in
             bnd :: bnds
       in
       let bnds =
         match v_nick_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "nick_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mobile_phone with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mobile_phone", arg in
             bnd :: bnds
       in
       let bnds =
         match v_middle_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "middle_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manager_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manager_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_manager with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "manager", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_login in
         ("login", arg) :: bnds
       in
       let bnds =
         match v_locale with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "locale", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_last_name in
         ("last_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_honorific_suffix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "honorific_suffix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_honorific_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "honorific_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_first_name in
         ("first_name", arg) :: bnds
       in
       let bnds =
         match v_expire_password_on_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "expire_password_on_create", arg in
             bnd :: bnds
       in
       let bnds =
         match v_employee_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "employee_number", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         match v_division with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "division", arg in
             bnd :: bnds
       in
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_department with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "department", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_profile_attributes_to_ignore with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "custom_profile_attributes_to_ignore", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_profile_attributes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "custom_profile_attributes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_country_code with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "country_code", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cost_center with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cost_center", arg in
             bnd :: bnds
       in
       let bnds =
         match v_city with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "city", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user

[@@@deriving.end]

let password_hash ?salt ?salt_order ?work_factor ~algorithm ~value ()
    : password_hash =
  { algorithm; salt; salt_order; value; work_factor }

let okta_user ?city ?cost_center ?country_code
    ?custom_profile_attributes ?custom_profile_attributes_to_ignore
    ?department ?display_name ?division ?employee_number
    ?expire_password_on_create ?honorific_prefix ?honorific_suffix
    ?id ?locale ?manager ?manager_id ?middle_name ?mobile_phone
    ?nick_name ?old_password ?organization ?password
    ?password_inline_hook ?postal_address ?preferred_language
    ?primary_phone ?profile_url ?recovery_answer ?recovery_question
    ?second_email ?skip_roles ?state ?status ?street_address
    ?timezone ?title ?user_type ?zip_code ~email ~first_name
    ~last_name ~login ~password_hash () : okta_user =
  {
    city;
    cost_center;
    country_code;
    custom_profile_attributes;
    custom_profile_attributes_to_ignore;
    department;
    display_name;
    division;
    email;
    employee_number;
    expire_password_on_create;
    first_name;
    honorific_prefix;
    honorific_suffix;
    id;
    last_name;
    locale;
    login;
    manager;
    manager_id;
    middle_name;
    mobile_phone;
    nick_name;
    old_password;
    organization;
    password;
    password_inline_hook;
    postal_address;
    preferred_language;
    primary_phone;
    profile_url;
    recovery_answer;
    recovery_question;
    second_email;
    skip_roles;
    state;
    status;
    street_address;
    timezone;
    title;
    user_type;
    zip_code;
    password_hash;
  }

type t = {
  tf_name : string;
  city : string prop;
  cost_center : string prop;
  country_code : string prop;
  custom_profile_attributes : string prop;
  custom_profile_attributes_to_ignore : string list prop;
  department : string prop;
  display_name : string prop;
  division : string prop;
  email : string prop;
  employee_number : string prop;
  expire_password_on_create : bool prop;
  first_name : string prop;
  honorific_prefix : string prop;
  honorific_suffix : string prop;
  id : string prop;
  last_name : string prop;
  locale : string prop;
  login : string prop;
  manager : string prop;
  manager_id : string prop;
  middle_name : string prop;
  mobile_phone : string prop;
  nick_name : string prop;
  old_password : string prop;
  organization : string prop;
  password : string prop;
  password_inline_hook : string prop;
  postal_address : string prop;
  preferred_language : string prop;
  primary_phone : string prop;
  profile_url : string prop;
  raw_status : string prop;
  recovery_answer : string prop;
  recovery_question : string prop;
  second_email : string prop;
  skip_roles : bool prop;
  state : string prop;
  status : string prop;
  street_address : string prop;
  timezone : string prop;
  title : string prop;
  user_type : string prop;
  zip_code : string prop;
}

let make ?city ?cost_center ?country_code ?custom_profile_attributes
    ?custom_profile_attributes_to_ignore ?department ?display_name
    ?division ?employee_number ?expire_password_on_create
    ?honorific_prefix ?honorific_suffix ?id ?locale ?manager
    ?manager_id ?middle_name ?mobile_phone ?nick_name ?old_password
    ?organization ?password ?password_inline_hook ?postal_address
    ?preferred_language ?primary_phone ?profile_url ?recovery_answer
    ?recovery_question ?second_email ?skip_roles ?state ?status
    ?street_address ?timezone ?title ?user_type ?zip_code ~email
    ~first_name ~last_name ~login ~password_hash __id =
  let __type = "okta_user" in
  let __attrs =
    ({
       tf_name = __id;
       city = Prop.computed __type __id "city";
       cost_center = Prop.computed __type __id "cost_center";
       country_code = Prop.computed __type __id "country_code";
       custom_profile_attributes =
         Prop.computed __type __id "custom_profile_attributes";
       custom_profile_attributes_to_ignore =
         Prop.computed __type __id
           "custom_profile_attributes_to_ignore";
       department = Prop.computed __type __id "department";
       display_name = Prop.computed __type __id "display_name";
       division = Prop.computed __type __id "division";
       email = Prop.computed __type __id "email";
       employee_number = Prop.computed __type __id "employee_number";
       expire_password_on_create =
         Prop.computed __type __id "expire_password_on_create";
       first_name = Prop.computed __type __id "first_name";
       honorific_prefix =
         Prop.computed __type __id "honorific_prefix";
       honorific_suffix =
         Prop.computed __type __id "honorific_suffix";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       locale = Prop.computed __type __id "locale";
       login = Prop.computed __type __id "login";
       manager = Prop.computed __type __id "manager";
       manager_id = Prop.computed __type __id "manager_id";
       middle_name = Prop.computed __type __id "middle_name";
       mobile_phone = Prop.computed __type __id "mobile_phone";
       nick_name = Prop.computed __type __id "nick_name";
       old_password = Prop.computed __type __id "old_password";
       organization = Prop.computed __type __id "organization";
       password = Prop.computed __type __id "password";
       password_inline_hook =
         Prop.computed __type __id "password_inline_hook";
       postal_address = Prop.computed __type __id "postal_address";
       preferred_language =
         Prop.computed __type __id "preferred_language";
       primary_phone = Prop.computed __type __id "primary_phone";
       profile_url = Prop.computed __type __id "profile_url";
       raw_status = Prop.computed __type __id "raw_status";
       recovery_answer = Prop.computed __type __id "recovery_answer";
       recovery_question =
         Prop.computed __type __id "recovery_question";
       second_email = Prop.computed __type __id "second_email";
       skip_roles = Prop.computed __type __id "skip_roles";
       state = Prop.computed __type __id "state";
       status = Prop.computed __type __id "status";
       street_address = Prop.computed __type __id "street_address";
       timezone = Prop.computed __type __id "timezone";
       title = Prop.computed __type __id "title";
       user_type = Prop.computed __type __id "user_type";
       zip_code = Prop.computed __type __id "zip_code";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user
        (okta_user ?city ?cost_center ?country_code
           ?custom_profile_attributes
           ?custom_profile_attributes_to_ignore ?department
           ?display_name ?division ?employee_number
           ?expire_password_on_create ?honorific_prefix
           ?honorific_suffix ?id ?locale ?manager ?manager_id
           ?middle_name ?mobile_phone ?nick_name ?old_password
           ?organization ?password ?password_inline_hook
           ?postal_address ?preferred_language ?primary_phone
           ?profile_url ?recovery_answer ?recovery_question
           ?second_email ?skip_roles ?state ?status ?street_address
           ?timezone ?title ?user_type ?zip_code ~email ~first_name
           ~last_name ~login ~password_hash ());
    attrs = __attrs;
  }

let register ?tf_module ?city ?cost_center ?country_code
    ?custom_profile_attributes ?custom_profile_attributes_to_ignore
    ?department ?display_name ?division ?employee_number
    ?expire_password_on_create ?honorific_prefix ?honorific_suffix
    ?id ?locale ?manager ?manager_id ?middle_name ?mobile_phone
    ?nick_name ?old_password ?organization ?password
    ?password_inline_hook ?postal_address ?preferred_language
    ?primary_phone ?profile_url ?recovery_answer ?recovery_question
    ?second_email ?skip_roles ?state ?status ?street_address
    ?timezone ?title ?user_type ?zip_code ~email ~first_name
    ~last_name ~login ~password_hash __id =
  let (r : _ Tf_core.resource) =
    make ?city ?cost_center ?country_code ?custom_profile_attributes
      ?custom_profile_attributes_to_ignore ?department ?display_name
      ?division ?employee_number ?expire_password_on_create
      ?honorific_prefix ?honorific_suffix ?id ?locale ?manager
      ?manager_id ?middle_name ?mobile_phone ?nick_name ?old_password
      ?organization ?password ?password_inline_hook ?postal_address
      ?preferred_language ?primary_phone ?profile_url
      ?recovery_answer ?recovery_question ?second_email ?skip_roles
      ?state ?status ?street_address ?timezone ?title ?user_type
      ?zip_code ~email ~first_name ~last_name ~login ~password_hash
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
