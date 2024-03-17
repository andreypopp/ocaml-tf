(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_directory_service_shared_directory_accepter__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory_accepter__timeouts *)

type aws_directory_service_shared_directory_accepter = {
  id : string prop option; [@option]  (** id *)
  shared_directory_id : string prop;  (** shared_directory_id *)
  timeouts :
    aws_directory_service_shared_directory_accepter__timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory_accepter *)

let aws_directory_service_shared_directory_accepter ?id ?timeouts
    ~shared_directory_id __resource_id =
  let __resource_type =
    "aws_directory_service_shared_directory_accepter"
  in
  let __resource = { id; shared_directory_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_shared_directory_accepter
       __resource);
  ()
