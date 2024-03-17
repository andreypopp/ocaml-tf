(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_hosted_connection = {
  bandwidth : string prop;  (** bandwidth *)
  connection_id : string prop;  (** connection_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  owner_account_id : string prop;  (** owner_account_id *)
  vlan : float prop;  (** vlan *)
}
[@@deriving yojson_of]
(** aws_dx_hosted_connection *)

let aws_dx_hosted_connection ?id ~bandwidth ~connection_id ~name
    ~owner_account_id ~vlan __resource_id =
  let __resource_type = "aws_dx_hosted_connection" in
  let __resource =
    { bandwidth; connection_id; id; name; owner_account_id; vlan }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_hosted_connection __resource);
  ()
