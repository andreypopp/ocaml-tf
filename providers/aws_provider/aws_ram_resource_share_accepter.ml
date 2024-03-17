(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ram_resource_share_accepter__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_ram_resource_share_accepter__timeouts *)

type aws_ram_resource_share_accepter = {
  share_arn : string;  (** share_arn *)
  timeouts : aws_ram_resource_share_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_ram_resource_share_accepter *)

let aws_ram_resource_share_accepter ?timeouts ~share_arn
    __resource_id =
  let __resource_type = "aws_ram_resource_share_accepter" in
  let __resource = { share_arn; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ram_resource_share_accepter __resource);
  ()
