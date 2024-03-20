(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opensearchserverless_access_policy = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_access_policy *)

let aws_opensearchserverless_access_policy ?description ~name ~policy
    ~type_ () : aws_opensearchserverless_access_policy =
  { description; name; policy; type_ }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

let make ?description ~name ~policy ~type_ __id =
  let __type = "aws_opensearchserverless_access_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       policy_version = Prop.computed __type __id "policy_version";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_access_policy
        (aws_opensearchserverless_access_policy ?description ~name
           ~policy ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~name ~policy ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ~name ~policy ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
