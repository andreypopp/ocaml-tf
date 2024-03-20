(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_cluster_policy = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_msk_cluster_policy *)

let aws_msk_cluster_policy ?id ~cluster_arn ~policy () :
    aws_msk_cluster_policy =
  { cluster_arn; id; policy }

type t = {
  cluster_arn : string prop;
  current_version : string prop;
  id : string prop;
  policy : string prop;
}

let make ?id ~cluster_arn ~policy __id =
  let __type = "aws_msk_cluster_policy" in
  let __attrs =
    ({
       cluster_arn = Prop.computed __type __id "cluster_arn";
       current_version = Prop.computed __type __id "current_version";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_cluster_policy
        (aws_msk_cluster_policy ?id ~cluster_arn ~policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_arn ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
