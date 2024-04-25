(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type admin_contact = {
  address_line_1 : string prop option; [@option]
  address_line_2 : string prop option; [@option]
  city : string prop option; [@option]
  contact_type : string prop option; [@option]
  country_code : string prop option; [@option]
  email : string prop option; [@option]
  extra_params : (string * string prop) list option; [@option]
  fax : string prop option; [@option]
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
  organization_name : string prop option; [@option]
  phone_number : string prop option; [@option]
  state : string prop option; [@option]
  zip_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : admin_contact) -> ()

let yojson_of_admin_contact =
  (function
   | {
       address_line_1 = v_address_line_1;
       address_line_2 = v_address_line_2;
       city = v_city;
       contact_type = v_contact_type;
       country_code = v_country_code;
       email = v_email;
       extra_params = v_extra_params;
       fax = v_fax;
       first_name = v_first_name;
       last_name = v_last_name;
       organization_name = v_organization_name;
       phone_number = v_phone_number;
       state = v_state;
       zip_code = v_zip_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "extra_params", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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
         match v_contact_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_type", arg in
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
       let bnds =
         match v_address_line_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_line_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : admin_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_admin_contact

[@@@deriving.end]

type billing_contact = {
  address_line_1 : string prop option; [@option]
  address_line_2 : string prop option; [@option]
  city : string prop option; [@option]
  contact_type : string prop option; [@option]
  country_code : string prop option; [@option]
  email : string prop option; [@option]
  extra_params : (string * string prop) list option; [@option]
  fax : string prop option; [@option]
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
  organization_name : string prop option; [@option]
  phone_number : string prop option; [@option]
  state : string prop option; [@option]
  zip_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : billing_contact) -> ()

let yojson_of_billing_contact =
  (function
   | {
       address_line_1 = v_address_line_1;
       address_line_2 = v_address_line_2;
       city = v_city;
       contact_type = v_contact_type;
       country_code = v_country_code;
       email = v_email;
       extra_params = v_extra_params;
       fax = v_fax;
       first_name = v_first_name;
       last_name = v_last_name;
       organization_name = v_organization_name;
       phone_number = v_phone_number;
       state = v_state;
       zip_code = v_zip_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "extra_params", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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
         match v_contact_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_type", arg in
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
       let bnds =
         match v_address_line_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_line_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : billing_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_billing_contact

[@@@deriving.end]

type name_server = {
  glue_ips : string prop list option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : name_server) -> ()

let yojson_of_name_server =
  (function
   | { glue_ips = v_glue_ips; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_glue_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "glue_ips", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : name_server -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_name_server

[@@@deriving.end]

type registrant_contact = {
  address_line_1 : string prop option; [@option]
  address_line_2 : string prop option; [@option]
  city : string prop option; [@option]
  contact_type : string prop option; [@option]
  country_code : string prop option; [@option]
  email : string prop option; [@option]
  extra_params : (string * string prop) list option; [@option]
  fax : string prop option; [@option]
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
  organization_name : string prop option; [@option]
  phone_number : string prop option; [@option]
  state : string prop option; [@option]
  zip_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : registrant_contact) -> ()

let yojson_of_registrant_contact =
  (function
   | {
       address_line_1 = v_address_line_1;
       address_line_2 = v_address_line_2;
       city = v_city;
       contact_type = v_contact_type;
       country_code = v_country_code;
       email = v_email;
       extra_params = v_extra_params;
       fax = v_fax;
       first_name = v_first_name;
       last_name = v_last_name;
       organization_name = v_organization_name;
       phone_number = v_phone_number;
       state = v_state;
       zip_code = v_zip_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "extra_params", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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
         match v_contact_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_type", arg in
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
       let bnds =
         match v_address_line_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_line_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : registrant_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_registrant_contact

[@@@deriving.end]

type tech_contact = {
  address_line_1 : string prop option; [@option]
  address_line_2 : string prop option; [@option]
  city : string prop option; [@option]
  contact_type : string prop option; [@option]
  country_code : string prop option; [@option]
  email : string prop option; [@option]
  extra_params : (string * string prop) list option; [@option]
  fax : string prop option; [@option]
  first_name : string prop option; [@option]
  last_name : string prop option; [@option]
  organization_name : string prop option; [@option]
  phone_number : string prop option; [@option]
  state : string prop option; [@option]
  zip_code : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tech_contact) -> ()

let yojson_of_tech_contact =
  (function
   | {
       address_line_1 = v_address_line_1;
       address_line_2 = v_address_line_2;
       city = v_city;
       contact_type = v_contact_type;
       country_code = v_country_code;
       email = v_email;
       extra_params = v_extra_params;
       fax = v_fax;
       first_name = v_first_name;
       last_name = v_last_name;
       organization_name = v_organization_name;
       phone_number = v_phone_number;
       state = v_state;
       zip_code = v_zip_code;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
             bnd :: bnds
       in
       let bnds =
         match v_phone_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "phone_number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_organization_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "organization_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_last_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "last_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_first_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "first_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fax with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "fax", arg in
             bnd :: bnds
       in
       let bnds =
         match v_extra_params with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "extra_params", arg in
             bnd :: bnds
       in
       let bnds =
         match v_email with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "email", arg in
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
         match v_contact_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "contact_type", arg in
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
       let bnds =
         match v_address_line_2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_address_line_1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "address_line_1", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : tech_contact -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tech_contact

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_route53domains_registered_domain = {
  admin_privacy : bool prop option; [@option]
  auto_renew : bool prop option; [@option]
  billing_privacy : bool prop option; [@option]
  domain_name : string prop;
  id : string prop option; [@option]
  registrant_privacy : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  tech_privacy : bool prop option; [@option]
  transfer_lock : bool prop option; [@option]
  admin_contact : admin_contact list;
  billing_contact : billing_contact list;
  name_server : name_server list;
  registrant_contact : registrant_contact list;
  tech_contact : tech_contact list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_route53domains_registered_domain) -> ()

let yojson_of_aws_route53domains_registered_domain =
  (function
   | {
       admin_privacy = v_admin_privacy;
       auto_renew = v_auto_renew;
       billing_privacy = v_billing_privacy;
       domain_name = v_domain_name;
       id = v_id;
       registrant_privacy = v_registrant_privacy;
       tags = v_tags;
       tags_all = v_tags_all;
       tech_privacy = v_tech_privacy;
       transfer_lock = v_transfer_lock;
       admin_contact = v_admin_contact;
       billing_contact = v_billing_contact;
       name_server = v_name_server;
       registrant_contact = v_registrant_contact;
       tech_contact = v_tech_contact;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_tech_contact v_tech_contact
         in
         ("tech_contact", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_registrant_contact
             v_registrant_contact
         in
         ("registrant_contact", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_name_server v_name_server
         in
         ("name_server", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_billing_contact v_billing_contact
         in
         ("billing_contact", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_admin_contact v_admin_contact
         in
         ("admin_contact", arg) :: bnds
       in
       let bnds =
         match v_transfer_lock with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "transfer_lock", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tech_privacy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tech_privacy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_registrant_privacy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "registrant_privacy", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_domain_name in
         ("domain_name", arg) :: bnds
       in
       let bnds =
         match v_billing_privacy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "billing_privacy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_auto_renew with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "auto_renew", arg in
             bnd :: bnds
       in
       let bnds =
         match v_admin_privacy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "admin_privacy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_route53domains_registered_domain ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_route53domains_registered_domain

[@@@deriving.end]

let admin_contact ?address_line_1 ?address_line_2 ?city ?contact_type
    ?country_code ?email ?extra_params ?fax ?first_name ?last_name
    ?organization_name ?phone_number ?state ?zip_code () :
    admin_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let billing_contact ?address_line_1 ?address_line_2 ?city
    ?contact_type ?country_code ?email ?extra_params ?fax ?first_name
    ?last_name ?organization_name ?phone_number ?state ?zip_code () :
    billing_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let name_server ?glue_ips ~name () : name_server = { glue_ips; name }

let registrant_contact ?address_line_1 ?address_line_2 ?city
    ?contact_type ?country_code ?email ?extra_params ?fax ?first_name
    ?last_name ?organization_name ?phone_number ?state ?zip_code () :
    registrant_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let tech_contact ?address_line_1 ?address_line_2 ?city ?contact_type
    ?country_code ?email ?extra_params ?fax ?first_name ?last_name
    ?organization_name ?phone_number ?state ?zip_code () :
    tech_contact =
  {
    address_line_1;
    address_line_2;
    city;
    contact_type;
    country_code;
    email;
    extra_params;
    fax;
    first_name;
    last_name;
    organization_name;
    phone_number;
    state;
    zip_code;
  }

let timeouts ?create ?update () : timeouts = { create; update }

let aws_route53domains_registered_domain ?admin_privacy ?auto_renew
    ?billing_privacy ?id ?registrant_privacy ?tags ?tags_all
    ?tech_privacy ?transfer_lock ?(admin_contact = [])
    ?(billing_contact = []) ?(name_server = [])
    ?(registrant_contact = []) ?(tech_contact = []) ?timeouts
    ~domain_name () : aws_route53domains_registered_domain =
  {
    admin_privacy;
    auto_renew;
    billing_privacy;
    domain_name;
    id;
    registrant_privacy;
    tags;
    tags_all;
    tech_privacy;
    transfer_lock;
    admin_contact;
    billing_contact;
    name_server;
    registrant_contact;
    tech_contact;
    timeouts;
  }

type t = {
  abuse_contact_email : string prop;
  abuse_contact_phone : string prop;
  admin_privacy : bool prop;
  auto_renew : bool prop;
  billing_privacy : bool prop;
  creation_date : string prop;
  domain_name : string prop;
  expiration_date : string prop;
  id : string prop;
  registrant_privacy : bool prop;
  registrar_name : string prop;
  registrar_url : string prop;
  reseller : string prop;
  status_list : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tech_privacy : bool prop;
  transfer_lock : bool prop;
  updated_date : string prop;
  whois_server : string prop;
}

let make ?admin_privacy ?auto_renew ?billing_privacy ?id
    ?registrant_privacy ?tags ?tags_all ?tech_privacy ?transfer_lock
    ?(admin_contact = []) ?(billing_contact = []) ?(name_server = [])
    ?(registrant_contact = []) ?(tech_contact = []) ?timeouts
    ~domain_name __id =
  let __type = "aws_route53domains_registered_domain" in
  let __attrs =
    ({
       abuse_contact_email =
         Prop.computed __type __id "abuse_contact_email";
       abuse_contact_phone =
         Prop.computed __type __id "abuse_contact_phone";
       admin_privacy = Prop.computed __type __id "admin_privacy";
       auto_renew = Prop.computed __type __id "auto_renew";
       billing_privacy = Prop.computed __type __id "billing_privacy";
       creation_date = Prop.computed __type __id "creation_date";
       domain_name = Prop.computed __type __id "domain_name";
       expiration_date = Prop.computed __type __id "expiration_date";
       id = Prop.computed __type __id "id";
       registrant_privacy =
         Prop.computed __type __id "registrant_privacy";
       registrar_name = Prop.computed __type __id "registrar_name";
       registrar_url = Prop.computed __type __id "registrar_url";
       reseller = Prop.computed __type __id "reseller";
       status_list = Prop.computed __type __id "status_list";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tech_privacy = Prop.computed __type __id "tech_privacy";
       transfer_lock = Prop.computed __type __id "transfer_lock";
       updated_date = Prop.computed __type __id "updated_date";
       whois_server = Prop.computed __type __id "whois_server";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53domains_registered_domain
        (aws_route53domains_registered_domain ?admin_privacy
           ?auto_renew ?billing_privacy ?id ?registrant_privacy ?tags
           ?tags_all ?tech_privacy ?transfer_lock ~admin_contact
           ~billing_contact ~name_server ~registrant_contact
           ~tech_contact ?timeouts ~domain_name ());
    attrs = __attrs;
  }

let register ?tf_module ?admin_privacy ?auto_renew ?billing_privacy
    ?id ?registrant_privacy ?tags ?tags_all ?tech_privacy
    ?transfer_lock ?(admin_contact = []) ?(billing_contact = [])
    ?(name_server = []) ?(registrant_contact = [])
    ?(tech_contact = []) ?timeouts ~domain_name __id =
  let (r : _ Tf_core.resource) =
    make ?admin_privacy ?auto_renew ?billing_privacy ?id
      ?registrant_privacy ?tags ?tags_all ?tech_privacy
      ?transfer_lock ~admin_contact ~billing_contact ~name_server
      ~registrant_contact ~tech_contact ?timeouts ~domain_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
