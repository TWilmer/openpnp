/*
 * Copyright (C) 2011 Jason von Nieda <jason@vonnieda.org>
 * 
 * This file is part of OpenPnP.
 * 
 * OpenPnP is free software: you can redistribute it and/or modify it under the terms of the GNU
 * General Public License as published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * OpenPnP is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even
 * the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General
 * Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with OpenPnP. If not, see
 * <http://www.gnu.org/licenses/>.
 * 
 * For more information about OpenPnP visit http://openpnp.org
 */

package org.openpnp.machine.reference.camera;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.beans.PropertyChangeSupport;
import java.io.IOException;
import java.net.URL;

import javax.imageio.ImageIO;

import org.openpnp.CameraListener;
import org.openpnp.gui.support.Wizard;
import org.openpnp.machine.reference.ReferenceCamera;
import org.openpnp.machine.reference.camera.wizards.RpiUV4LCameraConfigurationWizard;
import org.openpnp.model.LengthUnit;
import org.openpnp.model.Location;
import org.openpnp.spi.PropertySheetHolder;
import org.simpleframework.xml.Attribute;
import org.simpleframework.xml.Element;
import org.simpleframework.xml.core.Commit;

public class RpiUV4LCamera extends ReferenceCamera  {
    private PropertyChangeSupport pcs = new PropertyChangeSupport(this);



    @Element
    private String sourceUri = "http://192.168.0.41:8080/stream/snapshot.jpeg?delay_s=0";

    @Attribute(required = false)
    private int width = 1024;

    @Attribute(required = false)
    private int height = 768;

    private BufferedImage source;

    private Thread thread;

    public RpiUV4LCamera() {
        setUnitsPerPixel(new Location(LengthUnit.Millimeters, 0.04233, 0.04233, 0, 0));
        try {
            setSourceUri(sourceUri);
        }
        catch (Exception e) {
            
        }
    }

    @SuppressWarnings("unused")
    @Commit
    protected void commit() throws Exception {
        super.commit();
        setSourceUri(sourceUri);
    }


    public String getSourceUri() {
        return sourceUri;
    }

    public void setSourceUri(String sourceUri) throws Exception {
        String oldValue = this.sourceUri;
        this.sourceUri = sourceUri;
        pcs.firePropertyChange("sourceUri", oldValue, sourceUri);

    }

    @Override
    public synchronized BufferedImage internalCapture() {
    
    	  try {
				source = ImageIO.read(new URL(sourceUri));
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
        return source;
    }

   



    @Override
    public Wizard getConfigurationWizard() {
        return new RpiUV4LCameraConfigurationWizard(this);
    }

    @Override
    public String getPropertySheetHolderTitle() {
        return getClass().getSimpleName() + " " + getName();
    }

    @Override
    public PropertySheetHolder[] getChildPropertySheetHolders() {
        return null;
    }
}
