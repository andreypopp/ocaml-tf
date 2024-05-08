(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  name : string prop;
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : filter) -> ()

let yojson_of_filter =
  (function
   | { name = v_name; values = v_values } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_values then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_values
           in
           let bnd = "values", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_filter

[@@@deriving.end]

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type block_device_mappings = {
  device_name : string prop;
  ebs : (string * string prop) list;
  no_device : string prop;
  virtual_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_device_mappings) -> ()

let yojson_of_block_device_mappings =
  (function
   | {
       device_name = v_device_name;
       ebs = v_ebs;
       no_device = v_no_device;
       virtual_name = v_virtual_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_virtual_name in
         ("virtual_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_no_device in
         ("no_device", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_ebs
         in
         ("ebs", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_device_name in
         ("device_name", arg) :: bnds
       in
       `Assoc bnds
    : block_device_mappings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_device_mappings

[@@@deriving.end]

type product_codes = {
  product_code_id : string prop;
  product_code_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : product_codes) -> ()

let yojson_of_product_codes =
  (function
   | {
       product_code_id = v_product_code_id;
       product_code_type = v_product_code_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_product_code_type
         in
         ("product_code_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_product_code_id
         in
         ("product_code_id", arg) :: bnds
       in
       `Assoc bnds
    : product_codes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_product_codes

[@@@deriving.end]

type aws_ami = {
  executable_users : string prop list option; [@option]
  id : string prop option; [@option]
  include_deprecated : bool prop option; [@option]
  most_recent : bool prop option; [@option]
  name_regex : string prop option; [@option]
  owners : string prop list option; [@option]
  tags : (string * string prop) list option; [@option]
  filter : filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ami) -> ()

let yojson_of_aws_ami =
  (function
   | {
       executable_users = v_executable_users;
       id = v_id;
       include_deprecated = v_include_deprecated;
       most_recent = v_most_recent;
       name_regex = v_name_regex;
       owners = v_owners;
       tags = v_tags;
       filter = v_filter;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_filter then bnds
         else
           let arg = (yojson_of_list yojson_of_filter) v_filter in
           let bnd = "filter", arg in
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
         match v_owners with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "owners", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_regex with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_regex", arg in
             bnd :: bnds
       in
       let bnds =
         match v_most_recent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "most_recent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_include_deprecated with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_deprecated", arg in
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
         match v_executable_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "executable_users", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ami -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ami

[@@@deriving.end]

let filter ~name ~values () : filter = { name; values }
let timeouts ?read () : timeouts = { read }

let aws_ami ?executable_users ?id ?include_deprecated ?most_recent
    ?name_regex ?owners ?tags ?timeouts ~filter () : aws_ami =
  {
    executable_users;
    id;
    include_deprecated;
    most_recent;
    name_regex;
    owners;
    tags;
    filter;
    timeouts;
  }

type t = {
  tf_name : string;
  architecture : string prop;
  arn : string prop;
  block_device_mappings : block_device_mappings list prop;
  boot_mode : string prop;
  creation_date : string prop;
  deprecation_time : string prop;
  description : string prop;
  ena_support : bool prop;
  executable_users : string list prop;
  hypervisor : string prop;
  id : string prop;
  image_id : string prop;
  image_location : string prop;
  image_owner_alias : string prop;
  image_type : string prop;
  imds_support : string prop;
  include_deprecated : bool prop;
  kernel_id : string prop;
  most_recent : bool prop;
  name : string prop;
  name_regex : string prop;
  owner_id : string prop;
  owners : string list prop;
  platform : string prop;
  platform_details : string prop;
  product_codes : product_codes list prop;
  public : bool prop;
  ramdisk_id : string prop;
  root_device_name : string prop;
  root_device_type : string prop;
  root_snapshot_id : string prop;
  sriov_net_support : string prop;
  state : string prop;
  state_reason : (string * string) list prop;
  tags : (string * string) list prop;
  tpm_support : string prop;
  usage_operation : string prop;
  virtualization_type : string prop;
}

let make ?executable_users ?id ?include_deprecated ?most_recent
    ?name_regex ?owners ?tags ?timeouts ~filter __id =
  let __type = "aws_ami" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       arn = Prop.computed __type __id "arn";
       block_device_mappings =
         Prop.computed __type __id "block_device_mappings";
       boot_mode = Prop.computed __type __id "boot_mode";
       creation_date = Prop.computed __type __id "creation_date";
       deprecation_time =
         Prop.computed __type __id "deprecation_time";
       description = Prop.computed __type __id "description";
       ena_support = Prop.computed __type __id "ena_support";
       executable_users =
         Prop.computed __type __id "executable_users";
       hypervisor = Prop.computed __type __id "hypervisor";
       id = Prop.computed __type __id "id";
       image_id = Prop.computed __type __id "image_id";
       image_location = Prop.computed __type __id "image_location";
       image_owner_alias =
         Prop.computed __type __id "image_owner_alias";
       image_type = Prop.computed __type __id "image_type";
       imds_support = Prop.computed __type __id "imds_support";
       include_deprecated =
         Prop.computed __type __id "include_deprecated";
       kernel_id = Prop.computed __type __id "kernel_id";
       most_recent = Prop.computed __type __id "most_recent";
       name = Prop.computed __type __id "name";
       name_regex = Prop.computed __type __id "name_regex";
       owner_id = Prop.computed __type __id "owner_id";
       owners = Prop.computed __type __id "owners";
       platform = Prop.computed __type __id "platform";
       platform_details =
         Prop.computed __type __id "platform_details";
       product_codes = Prop.computed __type __id "product_codes";
       public = Prop.computed __type __id "public";
       ramdisk_id = Prop.computed __type __id "ramdisk_id";
       root_device_name =
         Prop.computed __type __id "root_device_name";
       root_device_type =
         Prop.computed __type __id "root_device_type";
       root_snapshot_id =
         Prop.computed __type __id "root_snapshot_id";
       sriov_net_support =
         Prop.computed __type __id "sriov_net_support";
       state = Prop.computed __type __id "state";
       state_reason = Prop.computed __type __id "state_reason";
       tags = Prop.computed __type __id "tags";
       tpm_support = Prop.computed __type __id "tpm_support";
       usage_operation = Prop.computed __type __id "usage_operation";
       virtualization_type =
         Prop.computed __type __id "virtualization_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ami
        (aws_ami ?executable_users ?id ?include_deprecated
           ?most_recent ?name_regex ?owners ?tags ?timeouts ~filter
           ());
    attrs = __attrs;
  }

let register ?tf_module ?executable_users ?id ?include_deprecated
    ?most_recent ?name_regex ?owners ?tags ?timeouts ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?executable_users ?id ?include_deprecated ?most_recent
      ?name_regex ?owners ?tags ?timeouts ~filter __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
