(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_profile_enrollment_apps = {
  apps : string prop list option; [@option]
  id : string prop option; [@option]
  policy_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_profile_enrollment_apps) -> ()

let yojson_of_okta_policy_profile_enrollment_apps =
  (function
   | { apps = v_apps; id = v_id; policy_id = v_policy_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
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
         match v_apps with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "apps", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_policy_profile_enrollment_apps ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_profile_enrollment_apps

[@@@deriving.end]

let okta_policy_profile_enrollment_apps ?apps ?id ~policy_id () :
    okta_policy_profile_enrollment_apps =
  { apps; id; policy_id }

type t = {
  tf_name : string;
  apps : string list prop;
  default_policy_id : string prop;
  id : string prop;
  policy_id : string prop;
}

let make ?apps ?id ~policy_id __id =
  let __type = "okta_policy_profile_enrollment_apps" in
  let __attrs =
    ({
       tf_name = __id;
       apps = Prop.computed __type __id "apps";
       default_policy_id =
         Prop.computed __type __id "default_policy_id";
       id = Prop.computed __type __id "id";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_profile_enrollment_apps
        (okta_policy_profile_enrollment_apps ?apps ?id ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ?apps ?id ~policy_id __id =
  let (r : _ Tf_core.resource) = make ?apps ?id ~policy_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
