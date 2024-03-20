(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ecrpublic_repository_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  repository_name : string prop;  (** repository_name *)
}
[@@deriving yojson_of]
(** aws_ecrpublic_repository_policy *)

let aws_ecrpublic_repository_policy ?id ~policy ~repository_name () :
    aws_ecrpublic_repository_policy =
  { id; policy; repository_name }

type t = {
  id : string prop;
  policy : string prop;
  registry_id : string prop;
  repository_name : string prop;
}

let make ?id ~policy ~repository_name __id =
  let __type = "aws_ecrpublic_repository_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       registry_id = Prop.computed __type __id "registry_id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecrpublic_repository_policy
        (aws_ecrpublic_repository_policy ?id ~policy ~repository_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
