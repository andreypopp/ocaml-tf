(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sign_in__anonymous = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__anonymous) -> ()

let yojson_of_sign_in__anonymous =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__anonymous -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__anonymous

[@@@deriving.end]

type sign_in__email = {
  enabled : bool prop option; [@option]
  password_required : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__email) -> ()

let yojson_of_sign_in__email =
  (function
   | { enabled = v_enabled; password_required = v_password_required }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_password_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "password_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sign_in__email -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__email

[@@@deriving.end]

type sign_in__phone_number = {
  enabled : bool prop option; [@option]
  test_phone_numbers : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__phone_number) -> ()

let yojson_of_sign_in__phone_number =
  (function
   | {
       enabled = v_enabled;
       test_phone_numbers = v_test_phone_numbers;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_test_phone_numbers with
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
             let bnd = "test_phone_numbers", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sign_in__phone_number -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__phone_number

[@@@deriving.end]

type sign_in__hash_config = {
  algorithm : string prop;
  memory_cost : float prop;
  rounds : float prop;
  salt_separator : string prop;
  signer_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in__hash_config) -> ()

let yojson_of_sign_in__hash_config =
  (function
   | {
       algorithm = v_algorithm;
       memory_cost = v_memory_cost;
       rounds = v_rounds;
       salt_separator = v_salt_separator;
       signer_key = v_signer_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_signer_key in
         ("signer_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_salt_separator
         in
         ("salt_separator", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_rounds in
         ("rounds", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_memory_cost in
         ("memory_cost", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : sign_in__hash_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in__hash_config

[@@@deriving.end]

type sign_in = {
  allow_duplicate_emails : bool prop option; [@option]
  anonymous : sign_in__anonymous list;
      [@default []] [@yojson_drop_default ( = )]
  email : sign_in__email list;
      [@default []] [@yojson_drop_default ( = )]
  phone_number : sign_in__phone_number list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : sign_in) -> ()

let yojson_of_sign_in =
  (function
   | {
       allow_duplicate_emails = v_allow_duplicate_emails;
       anonymous = v_anonymous;
       email = v_email;
       phone_number = v_phone_number;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_phone_number then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__phone_number)
               v_phone_number
           in
           let bnd = "phone_number", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_email then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__email) v_email
           in
           let bnd = "email", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_anonymous then bnds
         else
           let arg =
             (yojson_of_list yojson_of_sign_in__anonymous)
               v_anonymous
           in
           let bnd = "anonymous", arg in
           bnd :: bnds
       in
       let bnds =
         match v_allow_duplicate_emails with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_duplicate_emails", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : sign_in -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_sign_in

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
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

type google_identity_platform_project_default_config = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  sign_in : sign_in list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_identity_platform_project_default_config) -> ()

let yojson_of_google_identity_platform_project_default_config =
  (function
   | {
       id = v_id;
       project = v_project;
       sign_in = v_sign_in;
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
         if [] = v_sign_in then bnds
         else
           let arg = (yojson_of_list yojson_of_sign_in) v_sign_in in
           let bnd = "sign_in", arg in
           bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
       `Assoc bnds
    : google_identity_platform_project_default_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_identity_platform_project_default_config

[@@@deriving.end]

let sign_in__anonymous ~enabled () : sign_in__anonymous = { enabled }

let sign_in__email ?enabled ?password_required () : sign_in__email =
  { enabled; password_required }

let sign_in__phone_number ?enabled ?test_phone_numbers () :
    sign_in__phone_number =
  { enabled; test_phone_numbers }

let sign_in ?allow_duplicate_emails ?(anonymous = []) ?(email = [])
    ?(phone_number = []) () : sign_in =
  { allow_duplicate_emails; anonymous; email; phone_number }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_identity_platform_project_default_config ?id ?project
    ?(sign_in = []) ?timeouts () :
    google_identity_platform_project_default_config =
  { id; project; sign_in; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  project : string prop;
}

let make ?id ?project ?(sign_in = []) ?timeouts __id =
  let __type = "google_identity_platform_project_default_config" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_identity_platform_project_default_config
        (google_identity_platform_project_default_config ?id ?project
           ~sign_in ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?(sign_in = []) ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~sign_in ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
