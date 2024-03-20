(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecr_registry_policy = {
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_registry_policy) -> ()

let yojson_of_aws_ecr_registry_policy =
  (function
   | { id = v_id; policy = v_policy } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
    : aws_ecr_registry_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_registry_policy

[@@@deriving.end]

let aws_ecr_registry_policy ?id ~policy () : aws_ecr_registry_policy
    =
  { id; policy }

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
}

let make ?id ~policy __id =
  let __type = "aws_ecr_registry_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       registry_id = Prop.computed __type __id "registry_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_registry_policy
        (aws_ecr_registry_policy ?id ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy __id =
  let (r : _ Tf_core.resource) = make ?id ~policy __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
