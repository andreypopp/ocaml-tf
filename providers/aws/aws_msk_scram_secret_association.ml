(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_msk_scram_secret_association = {
  cluster_arn : string prop;  (** cluster_arn *)
  id : string prop option; [@option]  (** id *)
  secret_arn_list : string prop list;  (** secret_arn_list *)
}
[@@deriving yojson_of]
(** aws_msk_scram_secret_association *)

let aws_msk_scram_secret_association ?id ~cluster_arn
    ~secret_arn_list () : aws_msk_scram_secret_association =
  { cluster_arn; id; secret_arn_list }

type t = {
  cluster_arn : string prop;
  id : string prop;
  secret_arn_list : string list prop;
}

let make ?id ~cluster_arn ~secret_arn_list __id =
  let __type = "aws_msk_scram_secret_association" in
  let __attrs =
    ({
       cluster_arn = Prop.computed __type __id "cluster_arn";
       id = Prop.computed __type __id "id";
       secret_arn_list = Prop.computed __type __id "secret_arn_list";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_msk_scram_secret_association
        (aws_msk_scram_secret_association ?id ~cluster_arn
           ~secret_arn_list ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_arn ~secret_arn_list __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_arn ~secret_arn_list __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
