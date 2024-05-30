(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_enterprise_organization = {
  admin_logins : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  billing_email : string prop;
  description : string prop option; [@option]
  display_name : string prop option; [@option]
  enterprise_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_enterprise_organization) -> ()

let yojson_of_github_enterprise_organization =
  (function
   | {
       admin_logins = v_admin_logins;
       billing_email = v_billing_email;
       description = v_description;
       display_name = v_display_name;
       enterprise_id = v_enterprise_id;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_enterprise_id in
         ("enterprise_id", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_billing_email in
         ("billing_email", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_admin_logins then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_admin_logins
           in
           let bnd = "admin_logins", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : github_enterprise_organization ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_enterprise_organization

[@@@deriving.end]

let github_enterprise_organization ?description ?display_name
    ~admin_logins ~billing_email ~enterprise_id ~name () :
    github_enterprise_organization =
  {
    admin_logins;
    billing_email;
    description;
    display_name;
    enterprise_id;
    name;
  }

type t = {
  tf_name : string;
  admin_logins : string list prop;
  billing_email : string prop;
  database_id : float prop;
  description : string prop;
  display_name : string prop;
  enterprise_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?description ?display_name ~admin_logins ~billing_email
    ~enterprise_id ~name __id =
  let __type = "github_enterprise_organization" in
  let __attrs =
    ({
       tf_name = __id;
       admin_logins = Prop.computed __type __id "admin_logins";
       billing_email = Prop.computed __type __id "billing_email";
       database_id = Prop.computed __type __id "database_id";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       enterprise_id = Prop.computed __type __id "enterprise_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_github_enterprise_organization
        (github_enterprise_organization ?description ?display_name
           ~admin_logins ~billing_email ~enterprise_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ~admin_logins
    ~billing_email ~enterprise_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ~admin_logins ~billing_email
      ~enterprise_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
