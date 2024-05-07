(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecs_account_setting_default = {
  id : string prop option; [@option]
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecs_account_setting_default) -> ()

let yojson_of_aws_ecs_account_setting_default =
  (function
   | { id = v_id; name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
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
    : aws_ecs_account_setting_default ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecs_account_setting_default

[@@@deriving.end]

let aws_ecs_account_setting_default ?id ~name ~value () :
    aws_ecs_account_setting_default =
  { id; name; value }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  principal_arn : string prop;
  value : string prop;
}

let make ?id ~name ~value __id =
  let __type = "aws_ecs_account_setting_default" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_arn = Prop.computed __type __id "principal_arn";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecs_account_setting_default
        (aws_ecs_account_setting_default ?id ~name ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~value __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~value __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
