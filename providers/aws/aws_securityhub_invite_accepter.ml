(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_securityhub_invite_accepter = {
  id : string prop option; [@option]  (** id *)
  master_id : string prop;  (** master_id *)
}
[@@deriving yojson_of]
(** aws_securityhub_invite_accepter *)

let aws_securityhub_invite_accepter ?id ~master_id () :
    aws_securityhub_invite_accepter =
  { id; master_id }

type t = {
  id : string prop;
  invitation_id : string prop;
  master_id : string prop;
}

let make ?id ~master_id __id =
  let __type = "aws_securityhub_invite_accepter" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       invitation_id = Prop.computed __type __id "invitation_id";
       master_id = Prop.computed __type __id "master_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securityhub_invite_accepter
        (aws_securityhub_invite_accepter ?id ~master_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~master_id __id =
  let (r : _ Tf_core.resource) = make ?id ~master_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
