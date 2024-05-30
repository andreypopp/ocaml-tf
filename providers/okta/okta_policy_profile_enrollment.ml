(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_profile_enrollment = {
  id : string prop option; [@option]
  name : string prop;
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_profile_enrollment) -> ()

let yojson_of_okta_policy_profile_enrollment =
  (function
   | { id = v_id; name = v_name; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : okta_policy_profile_enrollment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_profile_enrollment

[@@@deriving.end]

let okta_policy_profile_enrollment ?id ?status ~name () :
    okta_policy_profile_enrollment =
  { id; name; status }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
}

let make ?id ?status ~name __id =
  let __type = "okta_policy_profile_enrollment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_profile_enrollment
        (okta_policy_profile_enrollment ?id ?status ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?status ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
