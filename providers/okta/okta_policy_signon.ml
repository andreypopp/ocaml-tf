(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_policy_signon = {
  description : string prop option; [@option]
  groups_included : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_policy_signon) -> ()

let yojson_of_okta_policy_signon =
  (function
   | {
       description = v_description;
       groups_included = v_groups_included;
       id = v_id;
       name = v_name;
       priority = v_priority;
       status = v_status;
     } ->
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
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
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
       let bnds =
         match v_groups_included with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "groups_included", arg in
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
       `Assoc bnds
    : okta_policy_signon -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_policy_signon

[@@@deriving.end]

let okta_policy_signon ?description ?groups_included ?id ?priority
    ?status ~name () : okta_policy_signon =
  { description; groups_included; id; name; priority; status }

type t = {
  tf_name : string;
  description : string prop;
  groups_included : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  status : string prop;
}

let make ?description ?groups_included ?id ?priority ?status ~name
    __id =
  let __type = "okta_policy_signon" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       groups_included = Prop.computed __type __id "groups_included";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_policy_signon
        (okta_policy_signon ?description ?groups_included ?id
           ?priority ?status ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?groups_included ?id ?priority
    ?status ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?groups_included ?id ?priority ?status ~name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
