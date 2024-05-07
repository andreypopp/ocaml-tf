(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_billing_account = {
  billing_account : string prop option; [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  lookup_projects : bool prop option; [@option]
  open_ : bool prop option; [@option] [@key "open"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_billing_account) -> ()

let yojson_of_google_billing_account =
  (function
   | {
       billing_account = v_billing_account;
       display_name = v_display_name;
       id = v_id;
       lookup_projects = v_lookup_projects;
       open_ = v_open_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_open_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "open", arg in
             bnd :: bnds
       in
       let bnds =
         match v_lookup_projects with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lookup_projects", arg in
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
         match v_billing_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "billing_account", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_billing_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_billing_account

[@@@deriving.end]

let google_billing_account ?billing_account ?display_name ?id
    ?lookup_projects ?open_ () : google_billing_account =
  { billing_account; display_name; id; lookup_projects; open_ }

type t = {
  tf_name : string;
  billing_account : string prop;
  display_name : string prop;
  id : string prop;
  lookup_projects : bool prop;
  name : string prop;
  open_ : bool prop;
  project_ids : string list prop;
}

let make ?billing_account ?display_name ?id ?lookup_projects ?open_
    __id =
  let __type = "google_billing_account" in
  let __attrs =
    ({
       tf_name = __id;
       billing_account = Prop.computed __type __id "billing_account";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       lookup_projects = Prop.computed __type __id "lookup_projects";
       name = Prop.computed __type __id "name";
       open_ = Prop.computed __type __id "open";
       project_ids = Prop.computed __type __id "project_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_billing_account
        (google_billing_account ?billing_account ?display_name ?id
           ?lookup_projects ?open_ ());
    attrs = __attrs;
  }

let register ?tf_module ?billing_account ?display_name ?id
    ?lookup_projects ?open_ __id =
  let (r : _ Tf_core.resource) =
    make ?billing_account ?display_name ?id ?lookup_projects ?open_
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
