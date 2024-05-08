(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__application_server_configuration__virtual_machine_configuration__image) ->
  ()

let yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    =
  (function
   | {
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__application_server_configuration__virtual_machine_configuration__image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__image

[@@@deriving.end]

type three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;
  ssh_private_key : string prop;
  ssh_public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile) ->
  ()

let yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    =
  (function
   | {
       admin_username = v_admin_username;
       ssh_private_key = v_ssh_private_key;
       ssh_public_key = v_ssh_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_public_key
         in
         ("ssh_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_private_key
         in
         ("ssh_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile

[@@@deriving.end]

type three_tier_configuration__application_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;
  image :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_profile :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__application_server_configuration__virtual_machine_configuration) ->
  ()

let yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration
    =
  (function
   | {
       virtual_machine_size = v_virtual_machine_size;
       image = v_image;
       os_profile = v_os_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_os_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile)
               v_os_profile
           in
           let bnd = "os_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration__image)
               v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_size
         in
         ("virtual_machine_size", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__application_server_configuration__virtual_machine_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration

[@@@deriving.end]

type three_tier_configuration__application_server_configuration = {
  instance_count : float prop;
  subnet_id : string prop;
  virtual_machine_configuration :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__application_server_configuration) ->
  ()

let yojson_of_three_tier_configuration__application_server_configuration
    =
  (function
   | {
       instance_count = v_instance_count;
       subnet_id = v_subnet_id;
       virtual_machine_configuration =
         v_virtual_machine_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__application_server_configuration__virtual_machine_configuration)
               v_virtual_machine_configuration
           in
           let bnd = "virtual_machine_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__application_server_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__application_server_configuration

[@@@deriving.end]

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__central_server_configuration__virtual_machine_configuration__image) ->
  ()

let yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    =
  (function
   | {
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__central_server_configuration__virtual_machine_configuration__image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__image

[@@@deriving.end]

type three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;
  ssh_private_key : string prop;
  ssh_public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile) ->
  ()

let yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    =
  (function
   | {
       admin_username = v_admin_username;
       ssh_private_key = v_ssh_private_key;
       ssh_public_key = v_ssh_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_public_key
         in
         ("ssh_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_private_key
         in
         ("ssh_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile

[@@@deriving.end]

type three_tier_configuration__central_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;
  image :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_profile :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__central_server_configuration__virtual_machine_configuration) ->
  ()

let yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration
    =
  (function
   | {
       virtual_machine_size = v_virtual_machine_size;
       image = v_image;
       os_profile = v_os_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_os_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile)
               v_os_profile
           in
           let bnd = "os_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration__image)
               v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_size
         in
         ("virtual_machine_size", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__central_server_configuration__virtual_machine_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration

[@@@deriving.end]

type three_tier_configuration__central_server_configuration = {
  instance_count : float prop;
  subnet_id : string prop;
  virtual_machine_configuration :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__central_server_configuration) ->
  ()

let yojson_of_three_tier_configuration__central_server_configuration
    =
  (function
   | {
       instance_count = v_instance_count;
       subnet_id = v_subnet_id;
       virtual_machine_configuration =
         v_virtual_machine_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__central_server_configuration__virtual_machine_configuration)
               v_virtual_machine_configuration
           in
           let bnd = "virtual_machine_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__central_server_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__central_server_configuration

[@@@deriving.end]

type three_tier_configuration__database_server_configuration__disk_volume_configuration = {
  number_of_disks : float prop;
  size_in_gb : float prop;
  sku_name : string prop;
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__database_server_configuration__disk_volume_configuration) ->
  ()

let yojson_of_three_tier_configuration__database_server_configuration__disk_volume_configuration
    =
  (function
   | {
       number_of_disks = v_number_of_disks;
       size_in_gb = v_size_in_gb;
       sku_name = v_sku_name;
       volume_name = v_volume_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku_name in
         ("sku_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size_in_gb in
         ("size_in_gb", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_number_of_disks
         in
         ("number_of_disks", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__database_server_configuration__disk_volume_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__database_server_configuration__disk_volume_configuration

[@@@deriving.end]

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__image = {
  offer : string prop;
  publisher : string prop;
  sku : string prop;
  version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__database_server_configuration__virtual_machine_configuration__image) ->
  ()

let yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    =
  (function
   | {
       offer = v_offer;
       publisher = v_publisher;
       sku = v_sku;
       version = v_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_version in
         ("version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sku in
         ("sku", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_publisher in
         ("publisher", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_offer in
         ("offer", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__database_server_configuration__virtual_machine_configuration__image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__image

[@@@deriving.end]

type three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile = {
  admin_username : string prop;
  ssh_private_key : string prop;
  ssh_public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile) ->
  ()

let yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    =
  (function
   | {
       admin_username = v_admin_username;
       ssh_private_key = v_ssh_private_key;
       ssh_public_key = v_ssh_public_key;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_public_key
         in
         ("ssh_public_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ssh_private_key
         in
         ("ssh_private_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_admin_username
         in
         ("admin_username", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile

[@@@deriving.end]

type three_tier_configuration__database_server_configuration__virtual_machine_configuration = {
  virtual_machine_size : string prop;
  image :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  os_profile :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__database_server_configuration__virtual_machine_configuration) ->
  ()

let yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration
    =
  (function
   | {
       virtual_machine_size = v_virtual_machine_size;
       image = v_image;
       os_profile = v_os_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_os_profile then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile)
               v_os_profile
           in
           let bnd = "os_profile", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_image then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration__image)
               v_image
           in
           let bnd = "image", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_virtual_machine_size
         in
         ("virtual_machine_size", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__database_server_configuration__virtual_machine_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration

[@@@deriving.end]

type three_tier_configuration__database_server_configuration = {
  database_type : string prop option; [@option]
  instance_count : float prop;
  subnet_id : string prop;
  disk_volume_configuration :
    three_tier_configuration__database_server_configuration__disk_volume_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_machine_configuration :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__database_server_configuration) ->
  ()

let yojson_of_three_tier_configuration__database_server_configuration
    =
  (function
   | {
       database_type = v_database_type;
       instance_count = v_instance_count;
       subnet_id = v_subnet_id;
       disk_volume_configuration = v_disk_volume_configuration;
       virtual_machine_configuration =
         v_virtual_machine_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__database_server_configuration__virtual_machine_configuration)
               v_virtual_machine_configuration
           in
           let bnd = "virtual_machine_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_disk_volume_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__database_server_configuration__disk_volume_configuration)
               v_disk_volume_configuration
           in
           let bnd = "disk_volume_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subnet_id in
         ("subnet_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_instance_count in
         ("instance_count", arg) :: bnds
       in
       let bnds =
         match v_database_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "database_type", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__database_server_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__database_server_configuration

[@@@deriving.end]

type three_tier_configuration__resource_names__application_server__virtual_machine__data_disk = {
  names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__application_server__virtual_machine__data_disk) ->
  ()

let yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    =
  (function
   | { names = v_names; volume_name = v_volume_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_names
           in
           let bnd = "names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__application_server__virtual_machine__data_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine__data_disk

[@@@deriving.end]

type three_tier_configuration__resource_names__application_server__virtual_machine = {
  host_name : string prop option; [@option]
  network_interface_names : string prop list option; [@option]
  os_disk_name : string prop option; [@option]
  virtual_machine_name : string prop option; [@option]
  data_disk :
    three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__application_server__virtual_machine) ->
  ()

let yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine
    =
  (function
   | {
       host_name = v_host_name;
       network_interface_names = v_network_interface_names;
       os_disk_name = v_os_disk_name;
       virtual_machine_name = v_virtual_machine_name;
       data_disk = v_data_disk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_disk then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine__data_disk)
               v_data_disk
           in
           let bnd = "data_disk", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_machine_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_interface_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__application_server__virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine

[@@@deriving.end]

type three_tier_configuration__resource_names__application_server = {
  availability_set_name : string prop option; [@option]
  virtual_machine :
    three_tier_configuration__resource_names__application_server__virtual_machine
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__application_server) ->
  ()

let yojson_of_three_tier_configuration__resource_names__application_server
    =
  (function
   | {
       availability_set_name = v_availability_set_name;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__application_server__virtual_machine)
               v_virtual_machine
           in
           let bnd = "virtual_machine", arg in
           bnd :: bnds
       in
       let bnds =
         match v_availability_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_set_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__application_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__application_server

[@@@deriving.end]

type three_tier_configuration__resource_names__central_server__load_balancer = {
  backend_pool_names : string prop list option; [@option]
  frontend_ip_configuration_names : string prop list option;
      [@option]
  health_probe_names : string prop list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__central_server__load_balancer) ->
  ()

let yojson_of_three_tier_configuration__resource_names__central_server__load_balancer
    =
  (function
   | {
       backend_pool_names = v_backend_pool_names;
       frontend_ip_configuration_names =
         v_frontend_ip_configuration_names;
       health_probe_names = v_health_probe_names;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_probe_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "health_probe_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frontend_ip_configuration_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "frontend_ip_configuration_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_pool_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backend_pool_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__central_server__load_balancer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__central_server__load_balancer

[@@@deriving.end]

type three_tier_configuration__resource_names__central_server__virtual_machine__data_disk = {
  names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__central_server__virtual_machine__data_disk) ->
  ()

let yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    =
  (function
   | { names = v_names; volume_name = v_volume_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_names
           in
           let bnd = "names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__central_server__virtual_machine__data_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine__data_disk

[@@@deriving.end]

type three_tier_configuration__resource_names__central_server__virtual_machine = {
  host_name : string prop option; [@option]
  network_interface_names : string prop list option; [@option]
  os_disk_name : string prop option; [@option]
  virtual_machine_name : string prop option; [@option]
  data_disk :
    three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__central_server__virtual_machine) ->
  ()

let yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine
    =
  (function
   | {
       host_name = v_host_name;
       network_interface_names = v_network_interface_names;
       os_disk_name = v_os_disk_name;
       virtual_machine_name = v_virtual_machine_name;
       data_disk = v_data_disk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_disk then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine__data_disk)
               v_data_disk
           in
           let bnd = "data_disk", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_machine_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_interface_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__central_server__virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine

[@@@deriving.end]

type three_tier_configuration__resource_names__central_server = {
  availability_set_name : string prop option; [@option]
  load_balancer :
    three_tier_configuration__resource_names__central_server__load_balancer
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_machine :
    three_tier_configuration__resource_names__central_server__virtual_machine
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__resource_names__central_server) ->
  ()

let yojson_of_three_tier_configuration__resource_names__central_server
    =
  (function
   | {
       availability_set_name = v_availability_set_name;
       load_balancer = v_load_balancer;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__central_server__virtual_machine)
               v_virtual_machine
           in
           let bnd = "virtual_machine", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__central_server__load_balancer)
               v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       let bnds =
         match v_availability_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_set_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__central_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__central_server

[@@@deriving.end]

type three_tier_configuration__resource_names__database_server__load_balancer = {
  backend_pool_names : string prop list option; [@option]
  frontend_ip_configuration_names : string prop list option;
      [@option]
  health_probe_names : string prop list option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__database_server__load_balancer) ->
  ()

let yojson_of_three_tier_configuration__resource_names__database_server__load_balancer
    =
  (function
   | {
       backend_pool_names = v_backend_pool_names;
       frontend_ip_configuration_names =
         v_frontend_ip_configuration_names;
       health_probe_names = v_health_probe_names;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_health_probe_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "health_probe_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_frontend_ip_configuration_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "frontend_ip_configuration_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_backend_pool_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "backend_pool_names", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__database_server__load_balancer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__database_server__load_balancer

[@@@deriving.end]

type three_tier_configuration__resource_names__database_server__virtual_machine__data_disk = {
  names : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  volume_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__database_server__virtual_machine__data_disk) ->
  ()

let yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    =
  (function
   | { names = v_names; volume_name = v_volume_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_volume_name in
         ("volume_name", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_names then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_names
           in
           let bnd = "names", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__database_server__virtual_machine__data_disk ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine__data_disk

[@@@deriving.end]

type three_tier_configuration__resource_names__database_server__virtual_machine = {
  host_name : string prop option; [@option]
  network_interface_names : string prop list option; [@option]
  os_disk_name : string prop option; [@option]
  virtual_machine_name : string prop option; [@option]
  data_disk :
    three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       three_tier_configuration__resource_names__database_server__virtual_machine) ->
  ()

let yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine
    =
  (function
   | {
       host_name = v_host_name;
       network_interface_names = v_network_interface_names;
       os_disk_name = v_os_disk_name;
       virtual_machine_name = v_virtual_machine_name;
       data_disk = v_data_disk;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_data_disk then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine__data_disk)
               v_data_disk
           in
           let bnd = "data_disk", arg in
           bnd :: bnds
       in
       let bnds =
         match v_virtual_machine_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "virtual_machine_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_network_interface_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_interface_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__database_server__virtual_machine ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine

[@@@deriving.end]

type three_tier_configuration__resource_names__database_server = {
  availability_set_name : string prop option; [@option]
  load_balancer :
    three_tier_configuration__resource_names__database_server__load_balancer
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  virtual_machine :
    three_tier_configuration__resource_names__database_server__virtual_machine
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__resource_names__database_server) ->
  ()

let yojson_of_three_tier_configuration__resource_names__database_server
    =
  (function
   | {
       availability_set_name = v_availability_set_name;
       load_balancer = v_load_balancer;
       virtual_machine = v_virtual_machine;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_virtual_machine then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__database_server__virtual_machine)
               v_virtual_machine
           in
           let bnd = "virtual_machine", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__database_server__load_balancer)
               v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       let bnds =
         match v_availability_set_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "availability_set_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__database_server ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__database_server

[@@@deriving.end]

type three_tier_configuration__resource_names__shared_storage = {
  account_name : string prop option; [@option]
  private_endpoint_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__resource_names__shared_storage) ->
  ()

let yojson_of_three_tier_configuration__resource_names__shared_storage
    =
  (function
   | {
       account_name = v_account_name;
       private_endpoint_name = v_private_endpoint_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_private_endpoint_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_endpoint_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names__shared_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__resource_names__shared_storage

[@@@deriving.end]

type three_tier_configuration__resource_names = {
  application_server :
    three_tier_configuration__resource_names__application_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  central_server :
    three_tier_configuration__resource_names__central_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_server :
    three_tier_configuration__resource_names__database_server list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  shared_storage :
    three_tier_configuration__resource_names__shared_storage list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : three_tier_configuration__resource_names) -> ()

let yojson_of_three_tier_configuration__resource_names =
  (function
   | {
       application_server = v_application_server;
       central_server = v_central_server;
       database_server = v_database_server;
       shared_storage = v_shared_storage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_shared_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__shared_storage)
               v_shared_storage
           in
           let bnd = "shared_storage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__database_server)
               v_database_server
           in
           let bnd = "database_server", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_central_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__central_server)
               v_central_server
           in
           let bnd = "central_server", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_server then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names__application_server)
               v_application_server
           in
           let bnd = "application_server", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__resource_names ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_three_tier_configuration__resource_names

[@@@deriving.end]

type three_tier_configuration__transport_create_and_mount = {
  resource_group_id : string prop option; [@option]
  storage_account_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : three_tier_configuration__transport_create_and_mount) -> ()

let yojson_of_three_tier_configuration__transport_create_and_mount =
  (function
   | {
       resource_group_id = v_resource_group_id;
       storage_account_name = v_storage_account_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_account_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_account_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resource_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : three_tier_configuration__transport_create_and_mount ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_three_tier_configuration__transport_create_and_mount

[@@@deriving.end]

type three_tier_configuration = {
  app_resource_group_name : string prop;
  high_availability_type : string prop option; [@option]
  secondary_ip_enabled : bool prop option; [@option]
  application_server_configuration :
    three_tier_configuration__application_server_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  central_server_configuration :
    three_tier_configuration__central_server_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  database_server_configuration :
    three_tier_configuration__database_server_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  resource_names : three_tier_configuration__resource_names list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  transport_create_and_mount :
    three_tier_configuration__transport_create_and_mount list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : three_tier_configuration) -> ()

let yojson_of_three_tier_configuration =
  (function
   | {
       app_resource_group_name = v_app_resource_group_name;
       high_availability_type = v_high_availability_type;
       secondary_ip_enabled = v_secondary_ip_enabled;
       application_server_configuration =
         v_application_server_configuration;
       central_server_configuration = v_central_server_configuration;
       database_server_configuration =
         v_database_server_configuration;
       resource_names = v_resource_names;
       transport_create_and_mount = v_transport_create_and_mount;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_transport_create_and_mount then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__transport_create_and_mount)
               v_transport_create_and_mount
           in
           let bnd = "transport_create_and_mount", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_names then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__resource_names)
               v_resource_names
           in
           let bnd = "resource_names", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_database_server_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__database_server_configuration)
               v_database_server_configuration
           in
           let bnd = "database_server_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_central_server_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__central_server_configuration)
               v_central_server_configuration
           in
           let bnd = "central_server_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_application_server_configuration then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_three_tier_configuration__application_server_configuration)
               v_application_server_configuration
           in
           let bnd = "application_server_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_secondary_ip_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "secondary_ip_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_high_availability_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "high_availability_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_app_resource_group_name
         in
         ("app_resource_group_name", arg) :: bnds
       in
       `Assoc bnds
    : three_tier_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_three_tier_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_workloads_sap_three_tier_virtual_instance = {
  app_location : string prop;
  environment : string prop;
  id : string prop option; [@option]
  location : string prop;
  managed_resource_group_name : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string prop) list option; [@option]
  identity : identity list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  three_tier_configuration : three_tier_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : azurerm_workloads_sap_three_tier_virtual_instance) -> ()

let yojson_of_azurerm_workloads_sap_three_tier_virtual_instance =
  (function
   | {
       app_location = v_app_location;
       environment = v_environment;
       id = v_id;
       location = v_location;
       managed_resource_group_name = v_managed_resource_group_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       sap_fqdn = v_sap_fqdn;
       sap_product = v_sap_product;
       tags = v_tags;
       identity = v_identity;
       three_tier_configuration = v_three_tier_configuration;
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
         if Stdlib.( = ) [] v_three_tier_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_three_tier_configuration)
               v_three_tier_configuration
           in
           let bnd = "three_tier_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_identity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_identity) v_identity
           in
           let bnd = "identity", arg in
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
         let arg = yojson_of_prop yojson_of_string v_sap_product in
         ("sap_product", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sap_fqdn in
         ("sap_fqdn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_managed_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "managed_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_environment in
         ("environment", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_location in
         ("app_location", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_workloads_sap_three_tier_virtual_instance ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_workloads_sap_three_tier_virtual_instance

[@@@deriving.end]

let identity ~identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__application_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__application_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__application_server_configuration
    ~instance_count ~subnet_id ~virtual_machine_configuration () :
    three_tier_configuration__application_server_configuration =
  { instance_count; subnet_id; virtual_machine_configuration }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__central_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__central_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__central_server_configuration
    ~instance_count ~subnet_id ~virtual_machine_configuration () :
    three_tier_configuration__central_server_configuration =
  { instance_count; subnet_id; virtual_machine_configuration }

let three_tier_configuration__database_server_configuration__disk_volume_configuration
    ~number_of_disks ~size_in_gb ~sku_name ~volume_name () :
    three_tier_configuration__database_server_configuration__disk_volume_configuration
    =
  { number_of_disks; size_in_gb; sku_name; volume_name }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    ~offer ~publisher ~sku ~version () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__image
    =
  { offer; publisher; sku; version }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    ~admin_username ~ssh_private_key ~ssh_public_key () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration__os_profile
    =
  { admin_username; ssh_private_key; ssh_public_key }

let three_tier_configuration__database_server_configuration__virtual_machine_configuration
    ~virtual_machine_size ~image ~os_profile () :
    three_tier_configuration__database_server_configuration__virtual_machine_configuration
    =
  { virtual_machine_size; image; os_profile }

let three_tier_configuration__database_server_configuration
    ?database_type ~instance_count ~subnet_id
    ~disk_volume_configuration ~virtual_machine_configuration () :
    three_tier_configuration__database_server_configuration =
  {
    database_type;
    instance_count;
    subnet_id;
    disk_volume_configuration;
    virtual_machine_configuration;
  }

let three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__application_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__application_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__application_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__application_server
    ?availability_set_name ?(virtual_machine = []) () :
    three_tier_configuration__resource_names__application_server =
  { availability_set_name; virtual_machine }

let three_tier_configuration__resource_names__central_server__load_balancer
    ?backend_pool_names ?frontend_ip_configuration_names
    ?health_probe_names ?name () :
    three_tier_configuration__resource_names__central_server__load_balancer
    =
  {
    backend_pool_names;
    frontend_ip_configuration_names;
    health_probe_names;
    name;
  }

let three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__central_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__central_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__central_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__central_server
    ?availability_set_name ?(load_balancer = [])
    ?(virtual_machine = []) () :
    three_tier_configuration__resource_names__central_server =
  { availability_set_name; load_balancer; virtual_machine }

let three_tier_configuration__resource_names__database_server__load_balancer
    ?backend_pool_names ?frontend_ip_configuration_names
    ?health_probe_names ?name () :
    three_tier_configuration__resource_names__database_server__load_balancer
    =
  {
    backend_pool_names;
    frontend_ip_configuration_names;
    health_probe_names;
    name;
  }

let three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    ~names ~volume_name () :
    three_tier_configuration__resource_names__database_server__virtual_machine__data_disk
    =
  { names; volume_name }

let three_tier_configuration__resource_names__database_server__virtual_machine
    ?host_name ?network_interface_names ?os_disk_name
    ?virtual_machine_name ~data_disk () :
    three_tier_configuration__resource_names__database_server__virtual_machine
    =
  {
    host_name;
    network_interface_names;
    os_disk_name;
    virtual_machine_name;
    data_disk;
  }

let three_tier_configuration__resource_names__database_server
    ?availability_set_name ?(load_balancer = [])
    ?(virtual_machine = []) () :
    three_tier_configuration__resource_names__database_server =
  { availability_set_name; load_balancer; virtual_machine }

let three_tier_configuration__resource_names__shared_storage
    ?account_name ?private_endpoint_name () :
    three_tier_configuration__resource_names__shared_storage =
  { account_name; private_endpoint_name }

let three_tier_configuration__resource_names
    ?(application_server = []) ?(central_server = [])
    ?(database_server = []) ?(shared_storage = []) () :
    three_tier_configuration__resource_names =
  {
    application_server;
    central_server;
    database_server;
    shared_storage;
  }

let three_tier_configuration__transport_create_and_mount
    ?resource_group_id ?storage_account_name () :
    three_tier_configuration__transport_create_and_mount =
  { resource_group_id; storage_account_name }

let three_tier_configuration ?high_availability_type
    ?secondary_ip_enabled ?(resource_names = [])
    ?(transport_create_and_mount = []) ~app_resource_group_name
    ~application_server_configuration ~central_server_configuration
    ~database_server_configuration () : three_tier_configuration =
  {
    app_resource_group_name;
    high_availability_type;
    secondary_ip_enabled;
    application_server_configuration;
    central_server_configuration;
    database_server_configuration;
    resource_names;
    transport_create_and_mount;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_workloads_sap_three_tier_virtual_instance ?id
    ?managed_resource_group_name ?tags ?(identity = []) ?timeouts
    ~app_location ~environment ~location ~name ~resource_group_name
    ~sap_fqdn ~sap_product ~three_tier_configuration () :
    azurerm_workloads_sap_three_tier_virtual_instance =
  {
    app_location;
    environment;
    id;
    location;
    managed_resource_group_name;
    name;
    resource_group_name;
    sap_fqdn;
    sap_product;
    tags;
    identity;
    three_tier_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  app_location : string prop;
  environment : string prop;
  id : string prop;
  location : string prop;
  managed_resource_group_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  sap_fqdn : string prop;
  sap_product : string prop;
  tags : (string * string) list prop;
}

let make ?id ?managed_resource_group_name ?tags ?(identity = [])
    ?timeouts ~app_location ~environment ~location ~name
    ~resource_group_name ~sap_fqdn ~sap_product
    ~three_tier_configuration __id =
  let __type = "azurerm_workloads_sap_three_tier_virtual_instance" in
  let __attrs =
    ({
       tf_name = __id;
       app_location = Prop.computed __type __id "app_location";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       managed_resource_group_name =
         Prop.computed __type __id "managed_resource_group_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sap_fqdn = Prop.computed __type __id "sap_fqdn";
       sap_product = Prop.computed __type __id "sap_product";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_workloads_sap_three_tier_virtual_instance
        (azurerm_workloads_sap_three_tier_virtual_instance ?id
           ?managed_resource_group_name ?tags ~identity ?timeouts
           ~app_location ~environment ~location ~name
           ~resource_group_name ~sap_fqdn ~sap_product
           ~three_tier_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?managed_resource_group_name ?tags
    ?(identity = []) ?timeouts ~app_location ~environment ~location
    ~name ~resource_group_name ~sap_fqdn ~sap_product
    ~three_tier_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?managed_resource_group_name ?tags ~identity ?timeouts
      ~app_location ~environment ~location ~name ~resource_group_name
      ~sap_fqdn ~sap_product ~three_tier_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
