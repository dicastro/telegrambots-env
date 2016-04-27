class puphpet_keyboard (
  $keyboard
) {

  $settings = $keyboard['settings']
  
  if $::osfamily == 'debian' {
    $layout = array_true($settings, 'layout') ? {
      true    => $settings['layout'],
      default => 'us'
    }

    $variant = array_true($settings, 'variant') ? {
      true    => $settings['variant'],
      default => ''
    }
    
    class { 'keyboard':
      layout  => $layout,
      variant => $variant
    }
  }

}




