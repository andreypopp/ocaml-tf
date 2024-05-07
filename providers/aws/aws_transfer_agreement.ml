(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_transfer_agreement = {
  access_role : string prop;
  base_directory : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  local_profile_id : string prop;
  partner_profile_id : string prop;
  server_id : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transfer_agreement) -> ()

let yojson_of_aws_transfer_agreement =
  (function
   | {
       access_role = v_access_role;
       base_directory = v_base_directory;
       description = v_description;
       id = v_id;
       local_profile_id = v_local_profile_id;
       partner_profile_id = v_partner_profile_id;
       server_id = v_server_id;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_partner_profile_id
         in
         ("partner_profile_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_local_profile_id
         in
         ("local_profile_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_base_directory
         in
         ("base_directory", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_access_role in
         ("access_role", arg) :: bnds
       in
       `Assoc bnds
    : aws_transfer_agreement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transfer_agreement

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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
