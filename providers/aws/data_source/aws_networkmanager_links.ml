(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_networkmanager_links = {
  global_network_id : string prop;
  id : string prop option; [@option]
  provider_name : string prop option; [@option]
  site_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_networkmanager_links) -> ()

let yojson_of_aws_networkmanager_links =
  (function
   | {
       global_network_id = v_global_network_id;
       id = v_id;
       provider_name = v_provider_name;
       site_id = v_site_id;
       tags = v_tags;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_site_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "site_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_provider_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "provider_name", arg in
             bnd :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_global_network_id
         in
         ("global_network_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_networkmanager_links -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_networkmanager_links

[@@@deriving.end]

let aws_networkmanager_links ?id ?provider_name ?site_id ?tags ?type_
    ~global_network_id () : aws_networkmanager_links =
  { global_network_id; id; provider_name; site_id; tags; type_ }

type t = {
  tf_name : string;
  global_network_id : string prop;
  id : string prop;
  ids : string list prop;
  provider_name : string prop;
  site_id : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

let make ?id ?provider_name ?site_id ?tags ?type_ ~global_network_id
    __id =
  let __type = "aws_networkmanager_links" in
  let __attrs =
    ({
       tf_name = __id;
       global_network_id =
         Prop.computed __type __id "global_network_id";
       id = Prop.computed __type __id "id";
       ids = Prop.computed __type __id "ids";
       provider_name = Prop.computed __type __id "provider_name";
       site_id = Prop.computed __type __id "site_id";
       tags = Prop.computed __type __id "tags";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_networkmanager_links
        (aws_networkmanager_links ?id ?provider_name ?site_id ?tags
           ?type_ ~global_network_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?provider_name ?site_id ?tags ?type_
    ~global_network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?provider_name ?site_id ?tags ?type_ ~global_network_id
      __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
