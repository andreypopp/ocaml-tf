(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing_group_membership = {
  id : string prop option; [@option]
  override_dynamic_group : bool prop option; [@option]
  thing_group_name : string prop;
  thing_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_thing_group_membership) -> ()

let yojson_of_aws_iot_thing_group_membership =
  (function
   | {
       id = v_id;
       override_dynamic_group = v_override_dynamic_group;
       thing_group_name = v_thing_group_name;
       thing_name = v_thing_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_thing_name in
         ("thing_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_thing_group_name
         in
         ("thing_group_name", arg) :: bnds
       in
       let bnds =
         match v_override_dynamic_group with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "override_dynamic_group", arg in
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
    : aws_iot_thing_group_membership ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_thing_group_membership

[@@@deriving.end]

let aws_iot_thing_group_membership ?id ?override_dynamic_group
    ~thing_group_name ~thing_name () : aws_iot_thing_group_membership
    =
  { id; override_dynamic_group; thing_group_name; thing_name }

type t = {
  tf_name : string;
  id : string prop;
  override_dynamic_group : bool prop;
  thing_group_name : string prop;
  thing_name : string prop;
}

let make ?id ?override_dynamic_group ~thing_group_name ~thing_name
    __id =
  let __type = "aws_iot_thing_group_membership" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       override_dynamic_group =
         Prop.computed __type __id "override_dynamic_group";
       thing_group_name =
         Prop.computed __type __id "thing_group_name";
       thing_name = Prop.computed __type __id "thing_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_group_membership
        (aws_iot_thing_group_membership ?id ?override_dynamic_group
           ~thing_group_name ~thing_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?override_dynamic_group ~thing_group_name
    ~thing_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?override_dynamic_group ~thing_group_name ~thing_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
