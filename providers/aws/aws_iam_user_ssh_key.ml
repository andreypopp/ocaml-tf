(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iam_user_ssh_key = {
  encoding : string prop;  (** encoding *)
  id : string prop option; [@option]  (** id *)
  public_key : string prop;  (** public_key *)
  status : string prop option; [@option]  (** status *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_iam_user_ssh_key *)

let aws_iam_user_ssh_key ?id ?status ~encoding ~public_key ~username
    () : aws_iam_user_ssh_key =
  { encoding; id; public_key; status; username }

type t = {
  encoding : string prop;
  fingerprint : string prop;
  id : string prop;
  public_key : string prop;
  ssh_public_key_id : string prop;
  status : string prop;
  username : string prop;
}

let make ?id ?status ~encoding ~public_key ~username __id =
  let __type = "aws_iam_user_ssh_key" in
  let __attrs =
    ({
       encoding = Prop.computed __type __id "encoding";
       fingerprint = Prop.computed __type __id "fingerprint";
       id = Prop.computed __type __id "id";
       public_key = Prop.computed __type __id "public_key";
       ssh_public_key_id =
         Prop.computed __type __id "ssh_public_key_id";
       status = Prop.computed __type __id "status";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iam_user_ssh_key
        (aws_iam_user_ssh_key ?id ?status ~encoding ~public_key
           ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~encoding ~public_key ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~encoding ~public_key ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
