(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let aws_dx_connection ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name () : aws_dx_connection =
  {
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

let make ?encryption_mode ?id ?provider_name ?request_macsec
    ?skip_destroy ?tags ?tags_all ~bandwidth ~location ~name __id =
  let __type = "aws_dx_connection" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_device = Prop.computed __type __id "aws_device";
       bandwidth = Prop.computed __type __id "bandwidth";
       encryption_mode = Prop.computed __type __id "encryption_mode";
       has_logical_redundancy =
         Prop.computed __type __id "has_logical_redundancy";
       id = Prop.computed __type __id "id";
       jumbo_frame_capable =
         Prop.computed __type __id "jumbo_frame_capable";
       location = Prop.computed __type __id "location";
       macsec_capable = Prop.computed __type __id "macsec_capable";
       name = Prop.computed __type __id "name";
       owner_account_id =
         Prop.computed __type __id "owner_account_id";
       partner_name = Prop.computed __type __id "partner_name";
       port_encryption_status =
         Prop.computed __type __id "port_encryption_status";
       provider_name = Prop.computed __type __id "provider_name";
       request_macsec = Prop.computed __type __id "request_macsec";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vlan_id = Prop.computed __type __id "vlan_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dx_connection
        (aws_dx_connection ?encryption_mode ?id ?provider_name
           ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
           ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?encryption_mode ?id ?provider_name
    ?request_macsec ?skip_destroy ?tags ?tags_all ~bandwidth
    ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?encryption_mode ?id ?provider_name ?request_macsec
      ?skip_destroy ?tags ?tags_all ~bandwidth ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
