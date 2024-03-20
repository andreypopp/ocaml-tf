(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_ssh_key = {
  body : string prop;  (** body *)
  id : string prop option; [@option]  (** id *)
  server_id : string prop;  (** server_id *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_transfer_ssh_key *)

let aws_transfer_ssh_key ?id ~body ~server_id ~user_name () :
    aws_transfer_ssh_key =
  { body; id; server_id; user_name }

type t = {
  body : string prop;
  id : string prop;
  server_id : string prop;
  user_name : string prop;
}

let make ?id ~body ~server_id ~user_name __id =
  let __type = "aws_transfer_ssh_key" in
  let __attrs =
    ({
       body = Prop.computed __type __id "body";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_ssh_key
        (aws_transfer_ssh_key ?id ~body ~server_id ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~body ~server_id ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~body ~server_id ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
