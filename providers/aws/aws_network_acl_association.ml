(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_network_acl_association = {
  id : string prop option; [@option]  (** id *)
  network_acl_id : string prop;  (** network_acl_id *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** aws_network_acl_association *)

let aws_network_acl_association ?id ~network_acl_id ~subnet_id () :
    aws_network_acl_association =
  { id; network_acl_id; subnet_id }

type t = {
  id : string prop;
  network_acl_id : string prop;
  subnet_id : string prop;
}

let make ?id ~network_acl_id ~subnet_id __id =
  let __type = "aws_network_acl_association" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       network_acl_id = Prop.computed __type __id "network_acl_id";
       subnet_id = Prop.computed __type __id "subnet_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_network_acl_association
        (aws_network_acl_association ?id ~network_acl_id ~subnet_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~network_acl_id ~subnet_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~network_acl_id ~subnet_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
