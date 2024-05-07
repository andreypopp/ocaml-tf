(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssoadmin_instances = { id : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ssoadmin_instances) -> ()

let yojson_of_aws_ssoadmin_instances =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_ssoadmin_instances -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ssoadmin_instances

[@@@deriving.end]

let aws_ssoadmin_instances ?id () : aws_ssoadmin_instances = { id }

type t = {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  identity_store_ids : string list prop;
}

let make ?id __id =
  let __type = "aws_ssoadmin_instances" in
  let __attrs =
    ({
       tf_name = __id;
       arns = Prop.computed __type __id "arns";
       id = Prop.computed __type __id "id";
       identity_store_ids =
         Prop.computed __type __id "identity_store_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_instances
        (aws_ssoadmin_instances ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?id __id =
  let (r : _ Tf_core.resource) = make ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
