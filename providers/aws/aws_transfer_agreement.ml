(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_transfer_agreement = {
  access_role : string prop;  (** access_role *)
  base_directory : string prop;  (** base_directory *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  local_profile_id : string prop;  (** local_profile_id *)
  partner_profile_id : string prop;  (** partner_profile_id *)
  server_id : string prop;  (** server_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_transfer_agreement *)

let aws_transfer_agreement ?description ?id ?tags ?tags_all
    ~access_role ~base_directory ~local_profile_id
    ~partner_profile_id ~server_id () : aws_transfer_agreement =
  {
    access_role;
    base_directory;
    description;
    id;
    local_profile_id;
    partner_profile_id;
    server_id;
    tags;
    tags_all;
  }

type t = {
  access_role : string prop;
  agreement_id : string prop;
  arn : string prop;
  base_directory : string prop;
  description : string prop;
  id : string prop;
  local_profile_id : string prop;
  partner_profile_id : string prop;
  server_id : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?description ?id ?tags ?tags_all ~access_role
    ~base_directory ~local_profile_id ~partner_profile_id ~server_id
    __resource_id =
  let __resource_type = "aws_transfer_agreement" in
  let __resource =
    aws_transfer_agreement ?description ?id ?tags ?tags_all
      ~access_role ~base_directory ~local_profile_id
      ~partner_profile_id ~server_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_transfer_agreement __resource);
  let __resource_attributes =
    ({
       access_role =
         Prop.computed __resource_type __resource_id "access_role";
       agreement_id =
         Prop.computed __resource_type __resource_id "agreement_id";
       arn = Prop.computed __resource_type __resource_id "arn";
       base_directory =
         Prop.computed __resource_type __resource_id "base_directory";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       local_profile_id =
         Prop.computed __resource_type __resource_id
           "local_profile_id";
       partner_profile_id =
         Prop.computed __resource_type __resource_id
           "partner_profile_id";
       server_id =
         Prop.computed __resource_type __resource_id "server_id";
       status = Prop.computed __resource_type __resource_id "status";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
