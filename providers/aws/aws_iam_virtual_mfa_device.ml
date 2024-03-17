(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_iam_virtual_mfa_device = {
  id : string prop option; [@option]  (** id *)
  path : string prop option; [@option]  (** path *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  virtual_mfa_device_name : string prop;
      (** virtual_mfa_device_name *)
}
[@@deriving yojson_of]
(** aws_iam_virtual_mfa_device *)

type t = {
  arn : string prop;
  base_32_string_seed : string prop;
  enable_date : string prop;
  id : string prop;
  path : string prop;
  qr_code_png : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_name : string prop;
  virtual_mfa_device_name : string prop;
}

let aws_iam_virtual_mfa_device ?id ?path ?tags ?tags_all
    ~virtual_mfa_device_name __resource_id =
  let __resource_type = "aws_iam_virtual_mfa_device" in
  let __resource =
    ({ id; path; tags; tags_all; virtual_mfa_device_name }
      : aws_iam_virtual_mfa_device)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_iam_virtual_mfa_device __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       base_32_string_seed =
         Prop.computed __resource_type __resource_id
           "base_32_string_seed";
       enable_date =
         Prop.computed __resource_type __resource_id "enable_date";
       id = Prop.computed __resource_type __resource_id "id";
       path = Prop.computed __resource_type __resource_id "path";
       qr_code_png =
         Prop.computed __resource_type __resource_id "qr_code_png";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
       virtual_mfa_device_name =
         Prop.computed __resource_type __resource_id
           "virtual_mfa_device_name";
     }
      : t)
  in
  __resource_attributes
