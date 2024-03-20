(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_media_store_container_policy = {
  container_name : string prop;
  id : string prop option; [@option]
  policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_media_store_container_policy) -> ()

let yojson_of_aws_media_store_container_policy =
  (function
   | {
       container_name = v_container_name;
       id = v_id;
       policy = v_policy;
     } ->
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_container_name
         in
         ("container_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_media_store_container_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_media_store_container_policy

[@@@deriving.end]

let aws_media_store_container_policy ?id ~container_name ~policy () :
    aws_media_store_container_policy =
  { container_name; id; policy }

type t = {
  container_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~container_name ~policy __id =
  let __type = "aws_media_store_container_policy" in
  let __attrs =
    ({
       container_name = Prop.computed __type __id "container_name";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_media_store_container_policy
        (aws_media_store_container_policy ?id ~container_name ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~container_name ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~container_name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
