(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?id ?tags ?tags_all ~access_role
    ~base_directory ~local_profile_id ~partner_profile_id ~server_id
    __id =
  let __type = "aws_transfer_agreement" in
  let __attrs =
    ({
       access_role = Prop.computed __type __id "access_role";
       agreement_id = Prop.computed __type __id "agreement_id";
       arn = Prop.computed __type __id "arn";
       base_directory = Prop.computed __type __id "base_directory";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       local_profile_id =
         Prop.computed __type __id "local_profile_id";
       partner_profile_id =
         Prop.computed __type __id "partner_profile_id";
       server_id = Prop.computed __type __id "server_id";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transfer_agreement
        (aws_transfer_agreement ?description ?id ?tags ?tags_all
           ~access_role ~base_directory ~local_profile_id
           ~partner_profile_id ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~access_role
    ~base_directory ~local_profile_id ~partner_profile_id ~server_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~access_role
      ~base_directory ~local_profile_id ~partner_profile_id
      ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
