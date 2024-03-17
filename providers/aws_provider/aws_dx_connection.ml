(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_dx_connection = {
  bandwidth : string prop;  (** bandwidth *)
  encryption_mode : string prop option; [@option]
      (** encryption_mode *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  provider_name : string prop option; [@option]  (** provider_name *)
  request_macsec : bool prop option; [@option]  (** request_macsec *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_dx_connection *)

type t = {
  arn : string prop;
  aws_device : string prop;
  bandwidth : string prop;
  encryption_mode : string prop;
  has_logical_redundancy : string prop;
  id : string prop;
  jumbo_frame_capable : bool prop;
  location : string prop;
  macsec_capable : bool prop;
  name : string prop;
  owner_account_id : string prop;
  partner_name : string prop;
  port_encryption_status : string prop;
  provider_name : string prop;
  request_macsec : bool prop;
  skip_destroy : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vlan_id : float prop;
}

let aws_dx_connection ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name __resource_id =
  let __resource_type = "aws_dx_connection" in
  let __resource =
    ({
       bandwidth;
       encryption_mode;
       id;
       location;
       name;
       provider_name;
       request_macsec;
       skip_destroy;
       tags;
       tags_all;
     }
      : aws_dx_connection)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_dx_connection __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_device =
         Prop.computed __resource_type __resource_id "aws_device";
       bandwidth =
         Prop.computed __resource_type __resource_id "bandwidth";
       encryption_mode =
         Prop.computed __resource_type __resource_id
           "encryption_mode";
       has_logical_redundancy =
         Prop.computed __resource_type __resource_id
           "has_logical_redundancy";
       id = Prop.computed __resource_type __resource_id "id";
       jumbo_frame_capable =
         Prop.computed __resource_type __resource_id
           "jumbo_frame_capable";
       location =
         Prop.computed __resource_type __resource_id "location";
       macsec_capable =
         Prop.computed __resource_type __resource_id "macsec_capable";
       name = Prop.computed __resource_type __resource_id "name";
       owner_account_id =
         Prop.computed __resource_type __resource_id
           "owner_account_id";
       partner_name =
         Prop.computed __resource_type __resource_id "partner_name";
       port_encryption_status =
         Prop.computed __resource_type __resource_id
           "port_encryption_status";
       provider_name =
         Prop.computed __resource_type __resource_id "provider_name";
       request_macsec =
         Prop.computed __resource_type __resource_id "request_macsec";
       skip_destroy =
         Prop.computed __resource_type __resource_id "skip_destroy";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       vlan_id =
         Prop.computed __resource_type __resource_id "vlan_id";
     }
      : t)
  in
  __resource_attributes
