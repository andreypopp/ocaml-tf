(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type google_service_account = {
  account_id : string prop;
  create_ignore_already_exists : bool prop option; [@option]
  description : string prop option; [@option]
  disabled : bool prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  project : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_service_account) -> ()

let yojson_of_google_service_account =
  (function
   | {
       account_id = v_account_id;
       create_ignore_already_exists = v_create_ignore_already_exists;
       description = v_description;
       disabled = v_disabled;
       display_name = v_display_name;
       id = v_id;
       project = v_project;
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
       let bnds =
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_ignore_already_exists with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "create_ignore_already_exists", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : google_service_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_service_account

[@@@deriving.end]

let timeouts ?create () : timeouts = { create }

let google_service_account ?create_ignore_already_exists ?description
    ?disabled ?display_name ?id ?project ?timeouts ~account_id () :
    google_service_account =
  {
    account_id;
    create_ignore_already_exists;
    description;
    disabled;
    display_name;
    id;
    project;
    timeouts;
  }

type t = {
  account_id : string prop;
  create_ignore_already_exists : bool prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  email : string prop;
  id : string prop;
  member : string prop;
  name : string prop;
  project : string prop;
  unique_id : string prop;
}

let make ?create_ignore_already_exists ?description ?disabled
    ?display_name ?id ?project ?timeouts ~account_id __id =
  let __type = "google_service_account" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       create_ignore_already_exists =
         Prop.computed __type __id "create_ignore_already_exists";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       display_name = Prop.computed __type __id "display_name";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       member = Prop.computed __type __id "member";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       unique_id = Prop.computed __type __id "unique_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_service_account
        (google_service_account ?create_ignore_already_exists
           ?description ?disabled ?display_name ?id ?project
           ?timeouts ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?create_ignore_already_exists ?description
    ?disabled ?display_name ?id ?project ?timeouts ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?create_ignore_already_exists ?description ?disabled
      ?display_name ?id ?project ?timeouts ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
