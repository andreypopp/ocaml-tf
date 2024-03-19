(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_directory_service_shared_directory_accepter = {
  id : string prop option; [@option]  (** id *)
  shared_directory_id : string prop;  (** shared_directory_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_directory_service_shared_directory_accepter *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_directory_service_shared_directory_accepter ?id ?timeouts
    ~shared_directory_id () :
    aws_directory_service_shared_directory_accepter =
  { id; shared_directory_id; timeouts }

type t = {
  id : string prop;
  method_ : string prop;
  notes : string prop;
  owner_account_id : string prop;
  owner_directory_id : string prop;
  shared_directory_id : string prop;
}

let register ?tf_module ?id ?timeouts ~shared_directory_id
    __resource_id =
  let __resource_type =
    "aws_directory_service_shared_directory_accepter"
  in
  let __resource =
    aws_directory_service_shared_directory_accepter ?id ?timeouts
      ~shared_directory_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_directory_service_shared_directory_accepter
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       method_ = Prop.computed __resource_type __resource_id "method";
       notes = Prop.computed __resource_type __resource_id "notes";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       owner_directory_id =
         Prop.computed __resource_type __resource_id
           "owner_directory_id";
       shared_directory_id =
         Prop.computed __resource_type __resource_id
           "shared_directory_id";
     }
      : t)
  in
  __resource_attributes
