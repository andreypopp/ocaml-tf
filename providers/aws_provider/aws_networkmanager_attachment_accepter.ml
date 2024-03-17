(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_networkmanager_attachment_accepter__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** aws_networkmanager_attachment_accepter__timeouts *)

type aws_networkmanager_attachment_accepter = {
  attachment_id : string;  (** attachment_id *)
  attachment_type : string;  (** attachment_type *)
  id : string option; [@option]  (** id *)
  timeouts : aws_networkmanager_attachment_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_networkmanager_attachment_accepter *)

let aws_networkmanager_attachment_accepter ?id ?timeouts
    ~attachment_id ~attachment_type __resource_id =
  let __resource_type = "aws_networkmanager_attachment_accepter" in
  let __resource =
    { attachment_id; attachment_type; id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_networkmanager_attachment_accepter __resource);
  ()
