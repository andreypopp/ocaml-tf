(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_user_ssh_key = {
  encoding : string prop;  (** encoding *)
  id : string prop option; [@option]  (** id *)
  public_key : string prop;  (** public_key *)
  status : string prop option; [@option]  (** status *)
  username : string prop;  (** username *)
}
[@@deriving yojson_of]
(** aws_iam_user_ssh_key *)

type t = {
  encoding : string prop;
  fingerprint : string prop;
  id : string prop;
  public_key : string prop;
  ssh_public_key_id : string prop;
  status : string prop;
  username : string prop;
}

let aws_iam_user_ssh_key ?id ?status ~encoding ~public_key ~username
    __resource_id =
  let __resource_type = "aws_iam_user_ssh_key" in
  let __resource =
    ({ encoding; id; public_key; status; username }
      : aws_iam_user_ssh_key)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_user_ssh_key __resource);
  let __resource_attributes =
    ({
       encoding =
         Prop.computed __resource_type __resource_id "encoding";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
       ssh_public_key_id =
         Prop.computed __resource_type __resource_id
           "ssh_public_key_id";
       status = Prop.computed __resource_type __resource_id "status";
       username =
         Prop.computed __resource_type __resource_id "username";
     }
      : t)
  in
  __resource_attributes
